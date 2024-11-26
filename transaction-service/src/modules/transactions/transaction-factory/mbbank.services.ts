import axios from 'axios'
import moment from 'moment-timezone'
import { Injectable, UnauthorizedException } from '@nestjs/common'
import * as playwright from 'playwright'
import * as https from 'https'
import * as crypto from 'crypto'
import { Gate } from '@/modules/transactions/transaction-factory/gate.service'
import { sleep } from '@/common/utils/sleep'
import { IResponsePaymentTransaction, ITokenMBBank } from '../transaction.i'
import { convertBySecond } from '@/common/utils/convertToDate'
import { CACHE_PATH } from '@/core/cache/cache.constant'

interface MbBankTransactionDto {
  refNo: string
  result: { responseCode: string; message: string; ok: boolean }
  transactionHistoryList: {
    postingDate: string
    transactionDate: string
    accountNo: string
    creditAmount: string
    debitAmount: string
    currency: 'VND'
    description: string
    availableBalance: string
    beneficiaryAccount: null
    refNo: string
    benAccountName: string
    bankName: string
    benAccountNo: string
    dueDate: null
    docId: null
    transactionType: string
  }[]
}
@Injectable()
export class MBBankService extends Gate {
  private sessionId: string | null | undefined
  private deviceId: string = ''
  getAgent() {
    return new https.Agent({
      secureOptions: crypto.constants.SSL_OP_LEGACY_SERVER_CONNECT
    })
  }

  private async login() {
    const browser = await playwright.chromium.launch({
      headless: true
    })
    try {
      const context = await browser.newContext()
      const page = await context.newPage()

      console.log('Mb bank login...')

      const getCaptchaWaitResponse = page.waitForResponse('**/retail-web-internetbankingms/getCaptchaImage', {
        timeout: 60000
      })
      await page.goto('https://online.mbbank.com.vn/pl/login')

      const getCaptchaJson = await getCaptchaWaitResponse.then((d) => d.json())

      const captchaText = await this.captchaSolver.solveCaptcha(getCaptchaJson.imageString)

      if (!captchaText) {
        throw new Error('Captcha not found')
      }

      await page.locator('#form1').getByRole('img').click()
      await page.getByPlaceholder('Tên đăng nhập').click()
      await page.getByPlaceholder('Tên đăng nhập').fill(this.config.login_id)
      await page.getByPlaceholder('Tên đăng nhập').press('Tab')
      await page.getByPlaceholder('Nhập mật khẩu').fill(this.config.password)
      await page.getByPlaceholder('NHẬP MÃ KIỂM TRA').click()
      await page.getByPlaceholder('NHẬP MÃ KIỂM TRA').fill(captchaText)

      const loginWaitResponse = page.waitForResponse(new RegExp('.*doLogin$', 'g'))
      await sleep(1000)
      await page.getByRole('button', { name: 'Đăng nhập' }).click()

      const loginJson = await loginWaitResponse.then((d) => d.json())

      if (loginJson.result.responseCode == 'GW283') {
        throw new Error('Wrong captcha')
        //
      }
      if (!loginJson.result.ok) throw new Error(loginJson.result.message.message)

      await browser.close()
      console.log('MBBankService login success')
      return {
        sessionId: loginJson.sessionId,
        deviceId: loginJson.cust.deviceId
      }
    } catch (error) {
      await browser.close()
      if (error.message.includes('locator.fill: value: expected string, got undefined')) {
        throw new Error('Wrong captcha')
      }
      throw new UnauthorizedException()
    }
  }

  async getHistory(loginId: string): Promise<IResponsePaymentTransaction> {
    if (!this.sessionId) {
      const token = await this.cacheService.getData<ITokenMBBank>({
        condition: loginId,
        ttl: convertBySecond(1, 'days'),
        getFunction: async () => {
          return await this.login()
        },
        path: CACHE_PATH.PAYMENT.TOKEN
      })
      this.sessionId = token.sessionId
      this.deviceId = token.deviceId
    }
    const fromDate = moment()
      .tz('Asia/Ho_Chi_Minh')
      .subtract(this.config.get_transaction_day_limit, 'days')
      .format('DD/MM/YYYY')
    const toDate = moment().tz('Asia/Ho_Chi_Minh').format('DD/MM/YYYY')
    const refNo = this.config.account.toUpperCase() + moment().tz('Asia/Ho_Chi_Minh').format('DDMMYYYYHHmmssSSS')
    const dataSend = {
      accountNo: this.config.account,
      fromDate,
      toDate,
      sessionId: this.sessionId,
      refNo,
      deviceIdCommon: this.deviceId
    }
    try {
      const { data } = await axios.post<MbBankTransactionDto>(
        'https://online.mbbank.com.vn/api/retail-transactionms/transactionms/get-account-transaction-history',

        dataSend,
        {
          headers: {
            'X-Request-Id': moment().tz('Asia/Ho_Chi_Minh').format('DDMMYYYYHHmmssSSS'),
            'Cache-Control': 'no-cache',
            Accept: 'application/json, text/plain, */*',
            Authorization: 'Basic RU1CUkVUQUlMV0VCOlNEMjM0ZGZnMzQlI0BGR0AzNHNmc2RmNDU4NDNm',
            Deviceid: this.deviceId,
            'User-Agent':
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36',
            Origin: 'https://online.mbbank.com.vn',
            Referer: 'https://online.mbbank.com.vn/',
            Refno: refNo,
            'Content-Type': 'application/json; charset=UTF-8'
          },
          httpsAgent: this.getAgent()
        }
      )

      if (data.result.responseCode === 'GW200') {
        throw new Error('Session expired')
      }

      if (!data.result.ok) throw new Error(data.result.message)

      if (!data.transactionHistoryList || data.transactionHistoryList.length < 1) {
        return {
          data: [],
          token: {
            sessionId: this.sessionId,
            deviceId: this.deviceId
          }
        }
      }

      return {
        data: [
          ...data.transactionHistoryList.map((transaction) => ({
            transaction_id: transaction.refNo,
            receiveAmount: Number(transaction.creditAmount),
            accountNo: transaction.accountNo,
            benAccountNo: transaction.benAccountNo,
            benAccountName: transaction.benAccountName,
            bankName: transaction.bankName,
            transferAmount: Number(transaction.debitAmount),
            content: transaction.description,
            currency: transaction.currency,
            description: transaction.description,
            availableBalance: Number(transaction.availableBalance),
            date: moment.tz(transaction.transactionDate, 'DD/MM/YYYY HH:mm:ss', 'Asia/Ho_Chi_Minh').toDate(),
            gate: 'MB_BANK'
          }))
        ],
        token: {
          sessionId: this.sessionId,
          deviceId: this.deviceId
        }
      }
    } catch (error) {
      console.error(error)

      try {
        if (error.message.includes('Client network socket disconnected before secure TLS connection was established')) {
          await sleep(10000)
        } else {
          const token = await this.cacheService.handleUpdateCacheByCondition<ITokenMBBank>({
            condition: loginId,
            pathCache: CACHE_PATH.PAYMENT.TOKEN,
            updateFunc: async () => {
              return await this.login()
            },
            isMutex: true
          })
          this.sessionId = token.sessionId
          this.deviceId = token.deviceId
        }
      } catch (error) {
        console.error(error)
      }

      throw error
    }
  }
}

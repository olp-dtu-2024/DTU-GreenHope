import { Injectable, Logger } from '@nestjs/common';
import { CaptchaSolverService } from '@/modules/captcha-solver/captcha-solver.service';
import {
  GateConfig,
  IResponsePaymentTransaction,
  Transaction,
} from '../transaction.i';
import moment from 'moment-timezone';
import { CacheService } from '@/core/cache/cache.service';
import { TransactionService } from '@/modules/transactions/transaction.service';

@Injectable()
export abstract class Gate {
  private logger = new Logger(Gate.name);
  private errorStreak = 0;
  private isErrored = false;

  constructor(
    protected readonly config: GateConfig,
    protected readonly captchaSolver: CaptchaSolverService,
    protected readonly transactionService: TransactionService,
    protected readonly loginId: string,
    protected readonly cacheService: CacheService
  ) {}

  abstract getHistory(loginId: string): Promise<IResponsePaymentTransaction>;

  getName() {
    return this.config.name;
  }

  async getHistoryAndPublish() {
    const payments = await this.getHistory(this.loginId);
    this.logger.log(
      JSON.stringify({
        label: 'Info',
        type: 'GetPayments',
      })
    );
    return await this.addPayments(payments.data);
  }

  async addPayments(payments: Transaction[]) {
    this.logger.log(
      JSON.stringify({
        label: 'GetPayments',
        type: payments,
      })
    );

    // const exitsTransaction = await this.databaseService.client.transaction.findMany({
    //   select: {
    //     transactionId: true
    //   }
    // })

    // const newPayments = payments.filter((payment) => !this.isExists(payment, exitsTransaction))
    const newPayments = payments;
    let replaceDateTimeNewPayments = newPayments.map((payment) => ({
      ...payment,
      date: this.replaceDateTodayAndNoTime(payment.date),
    }));

    const result = {
      transferTransaction: [],
      receiverTransaction: [],
    };

    if (replaceDateTimeNewPayments.length == 0) return result;

    replaceDateTimeNewPayments = replaceDateTimeNewPayments
      .slice(-500)
      .sort((a, b) => b.date.getTime() - a.date.getTime());

    replaceDateTimeNewPayments.forEach((transaction) => {
      if (
        Number(transaction.transferAmount) === 0 &&
        Number(transaction.receiveAmount) > 0
      ) {
        result.receiverTransaction.push(transaction);
      } else {
        result.transferTransaction.push(transaction);
      }
    });

    // await Promise.all([
    //   result.receiverTransaction.map(async (transaction) => {
    //     return await this.databaseService.client.transaction.create({
    //       data: {
    //         amount: transaction.receiveAmount,
    //         description: transaction.description,
    //         transactionId: transaction.transaction_id,
    //         direction: ETransactionDirection.INCOMING,
    //         createdAt: transaction.date,
    //         fundId: this.config.fundId,
    //         transactionDateTime: transaction.date
    //       }
    //     })
    //   }),

    //   result.transferTransaction.map(async (transaction) => {
    //     return await this.databaseService.client.transaction.create({
    //       data: {
    //         amount: transaction.transferAmount,
    //         description: transaction.description,
    //         transactionId: transaction.transaction_id,
    //         direction: ETransactionDirection.OUTCOMING,
    //         createdAt: transaction.date,
    //         fundId: this.config.fundId,
    //         transactionDateTime: transaction.date
    //       }
    //     })
    //   })
    // ])

    return result;
  }

  isExists(
    payment: Transaction,
    paymentFromDb: { transactionId: string }[]
  ): boolean {
    return paymentFromDb.some(
      (el) => el.transactionId == payment.transaction_id
    );
  }

  replaceDateTodayAndNoTime = (date: Date): Date => {
    const dateMoment = moment.tz(date, 'Asia/Ho_Chi_Minh');
    const dateNow = moment().tz('Asia/Ho_Chi_Minh');
    const dateNoTime =
      dateMoment.get('hour') == 0 &&
      dateMoment.get('minute') == 0 &&
      dateMoment.get('second') == 0;

    if (dateMoment.isSame(dateNow, 'day') && dateNoTime) {
      return new Date();
    }
    return date;
  };

  async execute() {
    const data = await this.getHistoryAndPublish();
    return data;
  }
}

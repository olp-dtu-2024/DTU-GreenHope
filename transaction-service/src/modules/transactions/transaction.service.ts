import { CacheService } from '@/core/cache/cache.service';
import { QueueRedisService } from '@/core/queues/queue-redis.service';
import { CaptchaSolverService } from '@/modules/captcha-solver/captcha-solver.service';
import { GateFactory } from '@/modules/transactions/transaction-factory/gate.factory';
import { Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';

@Injectable()
export class TransactionService {
  constructor(
    private readonly queueRedisService: QueueRedisService,
    private readonly configService: ConfigService,
    private readonly cacheService: CacheService,
    private readonly captchaSolver: CaptchaSolverService,
  ) { }
  refetchTransactionByFundId(fundId: string) {
    this.queueRedisService.enqueueRefetchTransaction({
      fundId
    })
  }

  async executeTransaction(fundId: string) {
    const gateFactory = new GateFactory(this.cacheService)
    const config = {
      login_id: this.configService.get<string>('MB_LOGIN_ID'),
      password: this.configService.get<string>('MB_PASSWORD'),
      account: this.configService.get<string>('MB_ACCOUNT_ID'),
      name: 'mb_bank_1',
      repeat_interval_in_sec: 10,
      fundId
    }
    const gateInstance = gateFactory.create(config, this.captchaSolver, this)
    return await gateInstance.execute()
  }
}

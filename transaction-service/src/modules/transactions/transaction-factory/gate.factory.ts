import { CaptchaSolverService } from '@/modules/captcha-solver/captcha-solver.service'
import { GateConfig } from '@/modules/transactions/transaction.i'
import { MBBankService } from '@/modules/transactions/transaction-factory/mbbank.services'
import { CacheService } from '@/core/cache/cache.service'
import { TransactionService } from '@/modules/transactions/transaction.service'

export class GateFactory {
  constructor(
    private readonly cacheService: CacheService,
  ) { }

  create(config: GateConfig, captchaSolver: CaptchaSolverService, transactionService: TransactionService) {
    const mbBank = new MBBankService(
      config,
      captchaSolver,
      transactionService,
      config.login_id,
      this.cacheService,
    )
    return mbBank
  }
}

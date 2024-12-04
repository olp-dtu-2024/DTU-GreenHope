import { CacheRedisModule } from '@/core/cache/cache.module';
import { CaptchaSolverModule } from '@/modules/captcha-solver/captcha-solver.module';
import { TransactionController } from '@/modules/transactions/transaction.controller';
import { TransactionService } from '@/modules/transactions/transaction.service';
import { Module } from '@nestjs/common';

@Module({
  imports: [
    CacheRedisModule,
    CaptchaSolverModule,
  ],
  controllers: [TransactionController],
  providers: [TransactionService],
  exports: [TransactionService],
})
export class TransactionModule { }

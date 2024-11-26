import { CacheRedisModule } from '@/core/cache/cache.module';
import { DatabaseModule } from '@/core/database/database.module';
import { CaptchaSolverModule } from '@/modules/captcha-solver/captcha-solver.module';
import { TransactionController } from '@/modules/transactions/transaction.controller';
import { TransactionService } from '@/modules/transactions/transaction.service';
import { Module } from '@nestjs/common';

@Module({
  imports: [
    CacheRedisModule,
    CaptchaSolverModule,
    DatabaseModule
  ],
  controllers: [TransactionController],
  providers: [TransactionService],
  exports: [TransactionService],
})
export class TransactionModule { }

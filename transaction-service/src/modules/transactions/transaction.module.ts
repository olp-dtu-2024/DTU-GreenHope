import { TransactionController } from '@/modules/transactions/transaction.controller';
import { TransactionService } from '@/modules/transactions/transaction.service';
import { Module } from '@nestjs/common';

@Module({
  controllers: [TransactionController],
  providers: [TransactionService],
  exports: [TransactionService],
})
export class TransactionModule { }

import { TransactionService } from '@/modules/transactions/transaction.service';
import { Controller, Get } from '@nestjs/common';

@Controller('transactions')
export class TransactionController {
  constructor(private readonly transactionService: TransactionService) { }

  @Get('path')
  getTransactions() {
    return this.transactionService.getTransactions();
  }
}

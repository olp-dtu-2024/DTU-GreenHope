import { TransactionService } from '@/modules/transactions/transaction.service';
import { Controller, Get } from '@nestjs/common';
import { MessagePattern, Payload } from '@nestjs/microservices'
@Controller('transactions')
export class TransactionController {
  constructor(private readonly transactionService: TransactionService) { }

  @Get('path')
  getTransactions() {
    // return this.transactionService.getTransactions();
  }

  @MessagePattern('refetchTransactionByFundId')
  async refetchTransactionByFundId(@Payload() data: { fundId: string }) {
    const fundId = JSON.parse(JSON.stringify(data)).fundId
    return this.transactionService.getTransactions(fundId);
  }
}

import { TransactionService } from '@/modules/transactions/transaction.service';
import { Controller, Get } from '@nestjs/common';
import { MessagePattern, Payload } from '@nestjs/microservices'
@Controller('transactions')
export class TransactionController {
  constructor(private readonly transactionService: TransactionService) { }
  @MessagePattern('refetchTransactionByFundId')
  async refetchTransactionByFundId(@Payload() data: { fundId: string }) {
    const fundId = '1'
    return this.transactionService.refetchTransactionByFundId(fundId);
  }
}

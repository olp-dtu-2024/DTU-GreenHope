import { TransactionService } from '@/modules/transactions/transaction.service';
import { Controller, Get } from '@nestjs/common';
import { MessagePattern, Payload } from '@nestjs/microservices'
@Controller('transactions')
export class TransactionController {
  constructor(private readonly transactionService: TransactionService) { }

  @Get('path')
  @MessagePattern('getTransactionByFundId')
  getTransactions(@Payload() data: {
    fundId: string
    queryString: any
  }) {
    return this.transactionService.getTransactionByFundId(data);
  }

  @MessagePattern('refetchTransactionByFundId')
  async refetchTransactionByFundId(@Payload() data: { fundId: string }) {
    const fundId = JSON.parse(JSON.stringify(data)).fundId
    return this.transactionService.refetchTransactionByFundId(fundId);
  }
}

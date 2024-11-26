import { TransactionService } from '@/modules/transactions/transaction.service';
import { Controller } from '@nestjs/common';

@Controller('transactions')
export class TransactionController {
  constructor(private readonly transactionService: TransactionService) { }
}

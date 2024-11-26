import { Module, Global } from '@nestjs/common';
import { BullModule } from '@nestjs/bullmq'
import { QueueRedisService } from '@/core/queues/queue-redis.service'
import { QueueProcessorRefetchTransaction } from '@/core/queues/queue-processor.service'
import { TransactionModule } from '@/modules/transactions/transaction.module';

@Global()
@Module({
  imports: [
    TransactionModule,
    BullModule.registerQueue(
      {
        name: 'refetchTransaction',
        prefix: 'BullQueue_refetchTransaction'
      }
    ),
  ],
  providers: [QueueRedisService, QueueProcessorRefetchTransaction],
  exports: [QueueRedisService, QueueProcessorRefetchTransaction]
})
export class QueueRedisModule { }

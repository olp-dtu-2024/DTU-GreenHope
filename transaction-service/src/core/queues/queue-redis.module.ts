import { Module } from '@nestjs/common'
import { BullModule } from '@nestjs/bullmq'
import { QueueRedisService } from '@/core/queues/queue-redis.service'
import { QueueProcessorRefetchTransaction } from '@/core/queues/queue-processor.service'

@Module({
  imports: [
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

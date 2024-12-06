import { Module, Global } from '@nestjs/common';
import { BullModule } from '@nestjs/bullmq';
import { QueueRedisService } from '@/core/queues/queue-redis.service';
import { QueueProcessoCompileSolidity } from '@/core/queues/queue-processor.service';
import { CompileModule } from '@/modules/compile/compile.module';

@Global()
@Module({
  imports: [
    CompileModule,
    BullModule.registerQueue({
      name: 'compileSolidity',
      prefix: 'BullQueue_compileSolidity',
    }),
  ],
  providers: [QueueRedisService, QueueProcessoCompileSolidity],
  exports: [QueueRedisService, QueueProcessoCompileSolidity],
})
export class QueueRedisModule {}

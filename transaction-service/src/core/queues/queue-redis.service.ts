import { InjectQueue } from '@nestjs/bullmq';
import { Injectable } from '@nestjs/common';
import { Queue } from 'bullmq';

@Injectable()
export class QueueRedisService {
  constructor(
    @InjectQueue('refetchTransaction')
    private readonly refetchTransactionQueue: Queue
  ) { }

  async enqueueRefetchTransaction(job: any): Promise<void> {
    await this.refetchTransactionQueue.add('refetchTransaction', job, {
      attempts: 3,
      backoff: {
        type: 'fixed',
        delay: 2000,
      },
    });
  }
}

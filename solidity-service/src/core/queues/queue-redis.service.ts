import { InjectQueue } from '@nestjs/bullmq';
import { Injectable } from '@nestjs/common';
import { Queue } from 'bullmq';

@Injectable()
export class QueueRedisService {
  constructor(
    @InjectQueue('compileSolidity')
    private readonly compileSolidityQueue: Queue
  ) {}

  async enqueueCompile(job: any): Promise<void> {
    try {
      console.log('Attempting to add job to queue:', job);
      await this.compileSolidityQueue.add('compileSolidity', job, {
        attempts: 3,
        backoff: {
          type: 'fixed',
          delay: 2000,
        },
      });
      console.log('Job successfully added to queue');
    } catch (error) {
      console.error('Failed to add job to queue:', error);
    }
  }
}
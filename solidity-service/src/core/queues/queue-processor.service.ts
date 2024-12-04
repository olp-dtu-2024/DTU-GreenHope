import { WorkerHost, Processor, OnWorkerEvent } from '@nestjs/bullmq';
import { Logger } from '@nestjs/common';
import { Job } from 'bullmq';
import { KafkaService } from '@/core/kafka/kafka.service';
import { CompileService } from '@/modules/compile/compile.service';

@Processor('compileSolidity')
export class QueueProcessoCompileSolidity extends WorkerHost {
  private logger = new Logger(QueueProcessoCompileSolidity.name);

  constructor(
    private readonly kafkaService: KafkaService,
    private readonly compileService: CompileService
  ) {
    super();
  }

  async process(job: Job): Promise<boolean> {
    if (job.name !== 'compileSolidity') {
      throw new Error('Invalid job name');
    }

    try {
      const data = await this.compileService.executeCompile(job?.data.data);
      this.kafkaService.emitEventByKafka(
        'lcdpService',
        'compileResponse',
        data
      );
      return true;
    } catch (error) {}
  }

  @OnWorkerEvent('active')
  onQueueActive(job: Job): void {
    this.logger.log(`Job started: ${job.id}, data:`, job.data);
  }

  @OnWorkerEvent('completed')
  onQueueComplete(job: Job): void {
    this.logger.log(`Job completed: ${job.id}`);
  }

  @OnWorkerEvent('failed')
  onQueueFailed(job: Job, err: any): void {
    this.logger.error(
      `Job failed: ${job.id} with error: ${err.message}`,
      err.stack
    );
  }
}

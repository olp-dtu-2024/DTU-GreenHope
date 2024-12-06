// import { PaymentService } from '@/modules/payments/payments.service'
import { WorkerHost, Processor, OnWorkerEvent } from '@nestjs/bullmq';
import { Logger } from '@nestjs/common';
import { Job } from 'bullmq';
import { TransactionService } from '@/modules/transactions/transaction.service';
import { EventEmitter2 } from '@nestjs/event-emitter';
import { KafkaService } from '@/core/kafka/kafka.service';

@Processor('refetchTransaction')
export class QueueProcessorRefetchTransaction extends WorkerHost {
  private logger = new Logger(QueueProcessorRefetchTransaction.name);

  constructor(
    // private readonly paymentService: PaymentService,
    // private readonly eventEmitter: EventEmitter2,
    private readonly transactionService: TransactionService,
    private readonly kafkaService: KafkaService
  ) {
    super();
  }

  async process(job: Job): Promise<boolean> {
    if (job.name !== 'refetchTransaction') {
      throw new Error('Invalid job name');
    }

    try {
      const refetch = await this.transactionService.executeTransaction(
        job?.data?.fundId ?? null
      );
      this.kafkaService.emitEventByKafka(
        'lcdpService',
        'transactionResponse',
        refetch
      );
      // const totalTransactions = refetch.reduce((acc, item) => {
      //   return acc + item.transferTransaction.length + item.receiverTransaction.length
      // }, 0)
      // const statusRefetch = refetch.some(
      //   (item) => item.transferTransaction.length > 0 || item.receiverTransaction.length > 0
      // )
      //   ? 'NEW_TRANSACTION'
      //   : 'NO_NEW_TRANSACTION'
      // this.eventEmitter.emit(EPaymentEvents.REFETCH_COMPLETE, {
      //   clientId: job.data.clientId,
      //   responsePayload: {
      //     messages: statusRefetch === 'NEW_TRANSACTION' ? `You have ${totalTransactions} new transaction !` : 'No new transaction found !',
      //     status: statusRefetch
      //   }
      // })
      return true;
    } catch (error) {
      if (error.message.includes('Unauthorize')) {
        this.logger.error(
          `Failed due to authorization issue: ${error.message}`
        );
        // this.eventEmitter.emit(EPaymentEvents.REFETCH_FAILED, {
        //   clientId: job.data.clientId,
        //   message: 'Account Bank is not authorized !'
        // })
        return error;
      }
      this.logger.error(
        `Failed to refetch transaction: ${error.message}`,
        error.stack
      );
      throw new Error(`Failed to refetch transaction: ${error.message}`);
    }
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

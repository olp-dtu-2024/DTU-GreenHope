import { INestApplication } from '@nestjs/common'
import { ExpressAdapter } from '@bull-board/express'
import { Queue } from 'bullmq'
import { createBullBoard } from '@bull-board/api'
import { BullMQAdapter } from '@bull-board/api/bullMQAdapter'

export function BullMQSetup(app: INestApplication): void {
  const serverAdapter = new ExpressAdapter();
  serverAdapter.setBasePath('/bull-admin');
  const queueRefetchTransaction = app.get<Queue>('BullQueue_compileSolidity');

  createBullBoard({
    queues: [new BullMQAdapter(queueRefetchTransaction)],
    serverAdapter,
  });

  app.use('/bull-admin', serverAdapter.getRouter());

  console.log('BullMQSetup: Bull Board route set up at /bull-admin');
}

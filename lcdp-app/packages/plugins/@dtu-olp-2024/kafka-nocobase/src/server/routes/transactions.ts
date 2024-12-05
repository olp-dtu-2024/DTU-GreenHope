import Application, { DefaultContext, DefaultState } from '@nocobase/server';
import { Producer } from 'kafkajs';

export const registerTransactionRoutes = async (
  appInstance: Application<DefaultState, DefaultContext>,
  producer: Producer
) => {
  appInstance.resource({
    name: 'transactions',
    actions: {
      async refetch(ctx, next) {
        try {
          console.log('Refetching transactions');
          await producer.send({
            topic: 'refetchTransactionByFundId',
            messages: [
              {
                value: 'Refetching transactions',
              }
            ],
          });
          ctx.status = 200;
        } catch (error) {
          console.error('Compilation error:', error);
          ctx.status = 500;
          ctx.body = {
            success: false,
            error: error.message,
          };
        }
        await next();
      },
    },
  });
  appInstance.acl.allow('transactions', 'refetch', 'public');
};

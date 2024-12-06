import Application, { DefaultContext, DefaultState } from '@nocobase/server';
import { Producer } from 'kafkajs';
import { getTransaction } from '../utils/getTransactions';

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
              },
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
      async checkTransaction(ctx, next) {
        try {
          console.log('Checking transactions');
          const transactionConfigRepo = await appInstance.db.getRepository(
            'transactions_config'
          );
          const transactionConfig = await transactionConfigRepo.find();
          const { abi, contractAddress, provider } = transactionConfig[0];

          const data = await getTransaction({ abi, contractAddress, provider });
          /*
[ {
            "transaction_code": "FT24341733685975",
            "amount": 5111,
            "direction": "INCOMING",
            "datetime": 1733467778
        },]
          */
          // lay db xuong roi check 3 field voi data, tra ve true false
          const DBTransactions = await appInstance.db
            .getRepository('transactions')
            .find();
          const transactionMismatch: any = {};
          await DBTransactions.map((tx) => {
            const matchedTransaction = data.find(
              (d) => d.transaction_code === tx.transaction_code
            );

            if (matchedTransaction) {
              if (matchedTransaction.amount !== tx.amount) {
                transactionMismatch.amount = {
                  correct: matchedTransaction.amount,
                  wrong: tx.amount,
                };
              } else if (matchedTransaction.direction !== tx.direction) {
                transactionMismatch.direction = {
                  correct: matchedTransaction.direction,
                  wrong: tx.direction,
                };
              } else {
                transactionMismatch.transaction_code = {
                  correct: matchedTransaction.transaction_code,
                  wrong: tx.transaction_code,
                };
              }
            }
          });
          ctx.body = {
            status: transactionMismatch.length === 0 ? true : false,
            transactionMismatch,
          };
          ctx.status = 200;
        } catch (error) {}
        await next();
      },
    },
  });
  appInstance.acl.allow('transactions', 'refetch', 'public');
  appInstance.acl.allow('transactions', 'checkTransaction', 'public');
};

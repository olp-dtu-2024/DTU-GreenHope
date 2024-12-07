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

          if (!transactionConfig || !transactionConfig.length) {
            throw new Error('Transaction config not found');
          }

          const { abi, contractAddress, provider } = transactionConfig[0];

          const blockchainData = await getTransaction({
            abi,
            contractAddress,
            provider,
          });

          if (!blockchainData) {
            throw new Error('No blockchain data received');
          }
          console.log('Blockchain data:', blockchainData);

          // Get DB transactions
          const DBTransactions = await appInstance.db
            .getRepository('transactions')
            .find();
          console.log('DB Transactions:', DBTransactions);

          const transactionMismatches = [];

          DBTransactions.forEach((dbTx) => {
            const blockchainTx = blockchainData.find(
              (bcTx) => bcTx.transaction_code === dbTx.transaction_code
            );

            if (blockchainTx) {
              const mismatch: any = {
                transaction_code: dbTx.transaction_code,
                differences: {},
              };

              if (blockchainTx.amount !== dbTx.amount) {
                mismatch.differences.amount = {
                  blockchain: blockchainTx.amount,
                  database: dbTx.amount,
                };
              }

              if (blockchainTx.direction !== dbTx.direction) {
                mismatch.differences.direction = {
                  blockchain: blockchainTx.direction,
                  database: dbTx.direction,
                };
              }

              if (Object.keys(mismatch.differences).length > 0) {
                transactionMismatches.push(mismatch);
              }
            } else {
              transactionMismatches.push({
                transaction_code: dbTx.transaction_code,
                error:
                  'Transaction exists in database but not found in blockchain',
              });
            }
          });

          blockchainData.forEach((bcTx) => {
            const dbTx = DBTransactions.find(
              (tx) => tx.transaction_code === bcTx.transaction_code
            );

            if (!dbTx) {
              transactionMismatches.push({
                transaction_code: bcTx.transaction_code,
                error:
                  'Transaction exists in blockchain but not found in database',
              });
            }
          });

          ctx.body = {
            status: transactionMismatches.length === 0,
            mismatches: transactionMismatches,
            totalChecked: DBTransactions.length,
            totalMismatches: transactionMismatches.length,
          };
          ctx.status = 200;
        } catch (error) {
          console.error('Error checking transactions:', error);
          ctx.status = 500;
          ctx.body = {
            status: false,
            error: error.message,
          };
        }
        await next();
      },
    },
  });
  appInstance.acl.allow('transactions', 'refetch', 'public');
  appInstance.acl.allow('transactions', 'checkTransaction', 'public');
};

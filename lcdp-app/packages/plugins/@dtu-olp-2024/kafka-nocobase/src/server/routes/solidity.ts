import Application, { DefaultContext, DefaultState } from '@nocobase/server';
import { Producer } from 'kafkajs';

export const registerSolidityRoutes = async (
  appInstance: Application<DefaultState, DefaultContext>,
  producer: Producer
) => {
  appInstance.resource({
    name: 'solidity',
    actions: {
      async compile(ctx, next) {
        try {
          const contractRepo =
            await appInstance.db.getRepository('smart_contracts');
          console.log('contractRepo:', contractRepo);
          const contractId = '1a4ba23b-b875-45fe-b23b-de6512377bb1';
          const contracts = await contractRepo.findById(contractId);
          console.log('contracts:', contracts);

          if (!producer) {
            throw new Error('Kafka producer not initialized');
          }

          await producer.send({
            topic: 'compileSolidity',
            messages: [
              {
                value: JSON.stringify({
                  contractId: contracts?.id,
                  contracts: contracts?.script,
                }),
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
    },
  });
  appInstance.acl.allow('solidity', 'compile', 'public');
};

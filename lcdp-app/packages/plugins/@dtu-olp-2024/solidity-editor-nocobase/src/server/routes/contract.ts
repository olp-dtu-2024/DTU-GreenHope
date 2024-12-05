import Application, { DefaultContext, DefaultState } from '@nocobase/server';

export const registerContract = async (
  appInstance: Application<DefaultState, DefaultContext>
) => {
  appInstance.resource({
    name: 'contract',
    actions: {
      async get(ctx, next) {
        try {
          const { contractId } = ctx.request.body;
          const contractRepo =
            await appInstance.db.getRepository('smart_contracts');
          const contracts = await contractRepo.findById(contractId);
          ctx.body = contracts;
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
  appInstance.acl.allow('contract', 'get', 'public');
};

import Application, { DefaultContext, DefaultState } from '@nocobase/server';
import { Producer } from 'kafkajs';
import { streamFile } from '../utils/streamFile';

export const registerRecognitionRoutes = async (
  appInstance: Application<DefaultState, DefaultContext>,
  producer: Producer
) => {
  appInstance.resource({
    name: 'recognition',
    actions: {
      async stream(ctx, next) {
        try {
          const { filePath } = ctx.request.body;
          if (!filePath) {
            ctx.status = 400;
            ctx.body = {
              success: false,
              error: 'File path is required',
            };
            return;
          }
          await streamFile(filePath, producer);
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
  appInstance.acl.allow('recognition', 'stream', 'public');
};

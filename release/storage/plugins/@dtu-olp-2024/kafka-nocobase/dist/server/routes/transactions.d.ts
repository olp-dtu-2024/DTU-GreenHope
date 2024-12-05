import Application, { DefaultContext, DefaultState } from '@nocobase/server';
import { Producer } from 'kafkajs';
export declare const registerTransactionRoutes: (appInstance: Application<DefaultState, DefaultContext>, producer: Producer) => Promise<void>;

import Application, { DefaultContext, DefaultState } from '@nocobase/server';
import { Producer } from 'kafkajs';
export declare const registerSolidityRoutes: (appInstance: Application<DefaultState, DefaultContext>, producer: Producer) => Promise<void>;

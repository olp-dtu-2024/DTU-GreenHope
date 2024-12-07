import Application, { DefaultContext, DefaultState } from '@nocobase/server';
import { Producer } from 'kafkajs';
export declare const registerRecognitionRoutes: (appInstance: Application<DefaultState, DefaultContext>, producer: Producer) => Promise<void>;

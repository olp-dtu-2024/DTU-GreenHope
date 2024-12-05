import Application, { DefaultContext, DefaultState } from '@nocobase/server';
export declare class MessageHandlers {
    static transactionResponse(message: any, appInstance: Application<DefaultState, DefaultContext>): Promise<{
        status: string;
        message: string;
    }>;
    static compileResponse(message: any, appInstance: Application<DefaultState, DefaultContext>): Promise<void>;
}
export declare const topicHandlers: {
    transactionResponse: typeof MessageHandlers.transactionResponse;
    compileResponse: typeof MessageHandlers.compileResponse;
};

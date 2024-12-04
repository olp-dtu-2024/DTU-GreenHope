import Application, { DefaultContext, DefaultState } from '@nocobase/server';
export declare class MessageHandlers {
    static transactionResponse(message: any, appInstance: Application<DefaultState, DefaultContext>): Promise<{
        status: string;
        message: string;
    }>;
}
export declare const topicHandlers: {
    transactionResponse: typeof MessageHandlers.transactionResponse;
};

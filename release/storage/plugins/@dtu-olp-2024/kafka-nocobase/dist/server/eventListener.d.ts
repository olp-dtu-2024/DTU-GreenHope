import { Producer, Consumer } from 'kafkajs';
import Application, { DefaultContext, DefaultState } from '@nocobase/server';
export declare class KafkaEventListener {
    private producer;
    private consumer;
    constructor(producer: Producer, consumer: Consumer);
    initializeTopics(topics: string[], appInstance: Application<DefaultState, DefaultContext>): Promise<void>;
    emit(topic: string, message: any): Promise<void>;
}

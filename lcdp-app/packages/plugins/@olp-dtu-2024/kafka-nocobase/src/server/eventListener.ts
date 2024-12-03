import { Producer, Consumer } from 'kafkajs';
import { ALL_TOPICS } from './constants';
import { topicHandlers } from './handler';
import Application, { DefaultContext, DefaultState } from '@nocobase/server';

export class KafkaEventListener {
  private producer: Producer;
  private consumer: Consumer;

  constructor(producer: Producer, consumer: Consumer) {
    this.producer = producer;
    this.consumer = consumer;
  }

  async initializeTopics(
    topics: string[],
    appInstance: Application<DefaultState, DefaultContext>
  ) {
    try {
      await this.consumer.subscribe({ topics: topics });

      await this.consumer.run({
        eachMessage: async ({ topic, partition, message }) => {
          try {
            const handler = topicHandlers[topic];
            const messageValue = message.value
              ? Buffer.from(message.value).toString('utf8')
              : null;
            console.log(`Received message: ${messageValue}`);
            console.log(messageValue);
            if (messageValue) {
              try {
                const parsedMessage = JSON.parse(messageValue);
                await handler(parsedMessage, appInstance);
                console.log('Parsed message:', parsedMessage);
              } catch (jsonError) {
                console.error('Error parsing JSON:', jsonError);
              }
            }
          } catch (error) {
            console.error(
              `Error processing message from topic ${topic}:`,
              error
            );
          }
        },
      });
    } catch (error) {
      console.error('Failed to initialize topics:', error);
      throw error;
    }
  }

  async emit(topic: string, message: any) {
    try {
      await this.producer.send({
        topic,
        messages: [
          {
            value: JSON.stringify(message),
          },
        ],
      });
    } catch (error) {
      console.error(`Failed to emit message to topic ${topic}:`, error);
      throw error;
    }
  }
}

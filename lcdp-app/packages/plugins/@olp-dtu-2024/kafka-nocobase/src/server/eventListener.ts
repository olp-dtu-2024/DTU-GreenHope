import { Producer, Consumer } from 'kafkajs';
import { ALL_TOPICS } from './constants';
import { topicHandlers } from 'packages/plugins/@olp-dtu-2024/kafka-nocobase/src/server/handler';

export class KafkaEventListener {
  private producer: Producer;
  private consumer: Consumer;

  constructor(producer: Producer, consumer: Consumer) {
    this.producer = producer;
    this.consumer = consumer;
  }

  async initializeTopics() {
    try {
      await this.consumer.subscribe({ topics: ALL_TOPICS });

      await this.consumer.run({
        eachMessage: async ({ topic, partition, message }) => {
          try {
            const handler = topicHandlers[topic];
            if (handler) {
              const messageValue = message.value ? Buffer.from(message.value).toString('utf8') : null;
              console.log(messageValue)
              const parsedMessage = messageValue ? JSON.parse(messageValue) : null;
              await handler(parsedMessage);
            } else {
              console.warn(`No handler found for topic: ${topic}`);
            }
          } catch (error) {
            console.error(`Error processing message from topic ${topic}:`, error);
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
            value: JSON.stringify(message)
          },
        ],
      });
    } catch (error) {
      console.error(`Failed to emit message to topic ${topic}:`, error);
      throw error;
    }
  }
}

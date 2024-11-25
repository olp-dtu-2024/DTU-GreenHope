import { Plugin } from '@nocobase/server';
import { Kafka, Producer, Consumer } from 'kafkajs';
import { KafkaEventListener } from './eventListener';

export class KafkaNocobaseServer extends Plugin {
  kafka: Kafka;
  producer: Producer;
  consumer: Consumer;
  private eventListener: KafkaEventListener;

  async afterAdd() {
    try {
      const brokers = process.env.KAFKA_BROKERS?.split(',') || ['localhost:9092'];
      this.kafka = new Kafka({
        clientId: 'nocobase-kafka',
        brokers: brokers,
        retry: {
          initialRetryTime: 100,
          retries: 5
        }
      });

      this.producer = this.kafka.producer();
      this.consumer = this.kafka.consumer({ groupId: 'nocobase-group' });
    } catch (error) {
      console.error('Failed to initialize Kafka:', error);
      throw error;
    }
  }

  async beforeLoad() {
    try {
      await Promise.all([
        this.producer.connect(),
        this.consumer.connect()
      ]);
    } catch (error) {
      console.error('Failed to connect to Kafka:', error);
      await this.cleanup();
      throw error;
    }
  }

  private async cleanup() {
    try {
      await Promise.all([
        this.producer?.disconnect(),
        this.consumer?.disconnect()
      ].filter(Boolean));
    } catch (error) {
      console.error('Error during Kafka cleanup:', error);
    }
  }

  async load() {
    this.eventListener = new KafkaEventListener(this.producer, this.consumer);

    // Initialize all topic listeners
    await this.eventListener.initializeTopics();

    // Add kafka methods to app context
    this.app.context.kafkaEmit = this.eventListener.emit.bind(this.eventListener);
  }

  async install() {
  }

  async afterEnable() {
    try {
      await this.producer.connect();
      await this.consumer.connect();
    } catch (error) {
      console.error('Kafka reconnection error:', error);
    }
  }

  async afterDisable() {
    await this.cleanup();
  }

  async remove() {
    await this.cleanup();
  }
}

export default KafkaNocobaseServer;

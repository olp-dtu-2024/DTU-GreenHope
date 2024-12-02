import { InstallOptions, Plugin } from '@nocobase/server';
import { Kafka, Producer, Consumer } from 'kafkajs';
import { KafkaEventListener } from './eventListener';
import Router from 'koa-router';

export class KafkaNocobaseServer extends Plugin {
  kafka: Kafka;
  producer: Producer;
  consumer: Consumer;
  private eventListener: KafkaEventListener;
  private router: Router<any, any>;

  async afterAdd() {
    this.router = new Router();
  }

  async beforeLoad() {
    this.app.use(this.router.routes());
  }

  async load() {
    this.router.post('/api/admin/kafka/emit', async (ctx) => {
      console.log('ctx.request.body', ctx.request.body);
      return ctx.request.body;
    });
    const db = this.db;
    const tableKafkaTopicName = 'kafka_topics';
    const tableKafkaConfigName = 'kafka_configs';
    const tableKafkaConfigExists = await db.sequelize
      .getQueryInterface()
      .showAllTables()
      .then((tables) => tables.includes(tableKafkaConfigName));

    const tableKafkaTopicExists = await db.sequelize
      .getQueryInterface()
      .showAllTables()
      .then((tables) => tables.includes(tableKafkaTopicName));

    if (!tableKafkaTopicExists) {
      console.warn('Creating kafka_topics collection');
      this.db.collection({
        name: tableKafkaTopicName,
        fields: [
          {
            type: 'uuid',
            name: 'id',
            primaryKey: true,
          },
          {
            type: 'string',
            name: 'broker_host',
            required: true,
          },
          {
            type: 'string',
            name: 'topic_name',
            required: true,
          },
          {
            type: 'string',
            name: 'type',
            required: true,
          },
        ],
      });

      this.app.db.getCollection('collections').repository.create({
        values: {
          name: tableKafkaTopicName,
          title: 'Kafka Topics',
          fields: [
            {
              name: 'id',
              type: 'uuid',
              interface: 'input',
              primaryKey: true,
              autoIncrement: false,
              uiSchema: {
                type: 'string',
                title: 'ID',
                'x-component': 'Input',
                required: true,
              },
            },
            {
              name: 'broker_host',
              interface: 'input',
              type: 'string',
              uiSchema: {
                type: 'string',
                title: 'Broker Host',
                'x-component': 'Input',
                required: true,
              },
            },
            {
              name: 'topic_name',
              interface: 'input',
              type: 'string',
              uiSchema: {
                type: 'string',
                title: 'Topic Name',
                'x-component': 'Input',
                required: true,
              },
            },
            {
              name: 'type',
              interface: 'select',
              type: 'string',
              uiSchema: {
                type: 'string',
                title: 'Type',
                'x-component': 'Select',
                'x-component-props': {
                  options: [
                    { label: 'Producer', value: 'producer' },
                    { label: 'Consumer', value: 'consumer' },
                  ],
                },
                required: true,
              },
            },
          ],
          actions: [
            {
              name: 'create',
              type: 'create',
              title: 'Create Kafka Topic',
              viewName: 'form',
            },
            {
              name: 'view',
              type: 'view',
              title: 'View',
              viewName: 'form',
            },
            {
              name: 'edit',
              type: 'edit',
              title: 'Edit',
              viewName: 'form',
            },
            {
              name: 'destroy',
              type: 'destroy',
              title: 'Delete',
            },
          ],
        },
      });

      await this.db.sync();
    } else {
      console.warn('kafka_topics collection already exists');
    }
    if (!tableKafkaConfigExists) {
      console.warn('Creating kafka_configs collection');
      this.db.collection({
        name: tableKafkaConfigName,
        fields: [
          {
            type: 'uuid',
            name: 'id',
            primaryKey: true,
          },
          {
            type: 'string',
            name: 'group_id',
            required: true,
          },
          {
            type: 'string',
            name: 'client_id',
            required: true,
          },
        ],
      });

      this.app.db.getCollection('collections').repository.create({
        values: {
          name: tableKafkaConfigName,
          title: 'Kafka Configs',
          fields: [
            {
              name: 'id',
              type: 'uuid',
              interface: 'input',
              primaryKey: true,
              autoIncrement: false,
              uiSchema: {
                type: 'string',
                title: 'ID',
                'x-component': 'Input',
                required: true,
              },
            },
            {
              name: 'group_id',
              interface: 'input',
              type: 'string',
              uiSchema: {
                type: 'string',
                title: 'Group Id',
                'x-component': 'Input',
                required: true,
              },
            },
            {
              name: 'client_id',
              interface: 'input',
              type: 'string',
              uiSchema: {
                type: 'string',
                title: 'Client Id',
                'x-component': 'Input',
                required: true,
              },
            },
          ],
          actions: [
            {
              name: 'create',
              type: 'create',
              title: 'Create Kafka Config',
              viewName: 'form',
            },
            {
              name: 'view',
              type: 'view',
              title: 'View',
              viewName: 'form',
            },
            {
              name: 'edit',
              type: 'edit',
              title: 'Edit',
              viewName: 'form',
            },
            {
              name: 'destroy',
              type: 'destroy',
              title: 'Delete',
            },
          ],
        },
      });

      await this.db.sync();
    }

    this.app.acl.allow('kafka_topics', '*');
    this.app.acl.allow('kafka_configs', '*');
    const kafkaTopics = (
      await this.db.sequelize.query('SELECT * FROM kafka_topics')
    )[0];
    const kafkaConfigs = (
      await this.db.sequelize.query('SELECT * FROM kafka_configs')
    )[0][0] as any;
    const brokers = kafkaTopics
      .filter((topic: any) => topic.broker_host)
      .map((topic: any) => topic.broker_host);
    const topics = kafkaTopics
      .filter((topic: any) => topic.topic_name)
      .map((topic: any) => topic.topic_name);
    if (!brokers.length || kafkaConfigs === undefined) {
      return console.error('No brokers found');
    }
    this.kafka = new Kafka({
      clientId: kafkaConfigs?.client_id,
      brokers: brokers,
      retry: {
        initialRetryTime: 100,
        retries: 5,
      },
    });
    this.producer = this.kafka.producer();
    this.consumer = this.kafka.consumer({ groupId: kafkaConfigs?.group_id });
    await Promise.all([this.producer.connect(), this.consumer.connect()]);
    this.eventListener = new KafkaEventListener(this.producer, this.consumer);
    await this.eventListener.initializeTopics(topics, this.app);
    this.app.context.kafkaEmit = this.eventListener.emit.bind(
      this.eventListener
    );
  }

  async install(options?: InstallOptions) {
    // Create tables if they don't exist
    const db = this.db;
    const tableKafkaTopicName = 'kafka_topics';
    const tableKafkaConfigName = 'kafka_configs';

    // Create collections
    this.db.collection({
      name: tableKafkaTopicName,
      fields: [
        { type: 'uuid', name: 'id', primaryKey: true },
        { type: 'string', name: 'broker_host', required: true },
        { type: 'string', name: 'topic_name', required: true },
        { type: 'string', name: 'type', required: true },
      ],
    });

    this.db.collection({
      name: tableKafkaConfigName,
      fields: [
        { type: 'uuid', name: 'id', primaryKey: true },
        { type: 'string', name: 'group_id', required: true },
        { type: 'string', name: 'client_id', required: true },
      ],
    });

    // Sync database
    await this.db.sync();

    // Insert default config if needed
    const hasConfig = await db.getRepository('kafka_configs').count();
    if (!hasConfig) {
      await db.getRepository('kafka_configs').create({
        values: {
          group_id: 'nocobase-group',
          client_id: 'nocobase-client',
        },
      });
    }

    // Insert default topic if needed
    const hasTopic = await db.getRepository('kafka_topics').count();
    if (!hasTopic) {
      await db.getRepository('kafka_topics').create({
        values: {
          broker_host: 'localhost:9092',
          topic_name: 'nocobase-events',
          type: 'producer',
        },
      });
    }

    // Set permissions
    this.app.acl.allow('kafka_topics', '*');
    this.app.acl.allow('kafka_configs', '*');

    await this.app.db.sync();
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

  private async cleanup() {
    try {
      await Promise.all(
        [this.producer?.disconnect(), this.consumer?.disconnect()].filter(
          Boolean
        )
      );
    } catch (error) {
      console.error('Error during Kafka cleanup:', error);
    }
  }
}

export default KafkaNocobaseServer;

import { defineCollection } from '@nocobase/database';

export default defineCollection({
  name: 'kafka-topics',
  fields: [
    {
      type: 'string',
      name: 'broker_host',
      required: true
    }, {
      type: 'string',
      name: 'topic_name',
      required: true
    },
    {
      type: 'string',
      name: 'type',
      required: true
    }
  ]
});

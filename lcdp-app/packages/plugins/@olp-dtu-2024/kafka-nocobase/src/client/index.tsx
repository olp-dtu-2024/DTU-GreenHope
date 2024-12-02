import PluginWorkflowClient from '@nocobase/plugin-workflow';
import KafkaTrigger from './triggers/kafkaTrigger';

export class KafkaNocobaseClient extends PluginWorkflowClient {
  async afterAdd() {
    // await this.app.pm.add()
  }

  async beforeLoad() {}

  // You can get and modify the app instance here
  async load() {
    this.registerTrigger('kafka', KafkaTrigger);
  }
}

export default KafkaNocobaseClient;

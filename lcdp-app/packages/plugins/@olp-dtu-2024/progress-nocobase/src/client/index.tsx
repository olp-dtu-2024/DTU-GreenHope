import { Plugin } from '@nocobase/client';
import { useBlockScopeDecoratorProps, useProgressBlockProps } from './schema';
import { progressInitializerItem } from './initializer';
import { Progress } from './component';
import { progressSettings } from './settings';

export class ProgressNocobaseClient extends Plugin {
  async afterAdd() {
    // await this.app.pm.add()
  }

  async beforeLoad() {}

  // You can get and modify the app instance here
  async load() {
    this.app.addScopes({
      // useInfoProps,
      useBlockScopeDecoratorProps,
      useProgressBlockProps,
    });
    this.app.addComponents({
      Progress,
    });
    this.app.schemaSettingsManager.add(progressSettings);
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `dataBlocks.${progressInitializerItem.name}`,
      progressInitializerItem
    );
  }
}

export default ProgressNocobaseClient;

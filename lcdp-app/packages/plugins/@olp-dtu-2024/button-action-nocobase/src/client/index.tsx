import { Plugin, useSchemaInitializer } from '@nocobase/client';
import { ActionConfigBlock } from './component/ActionConfigBlock';
import { configureActions } from './initializer';
import { BlockName } from './constants';

export class ButtonActionNocobaseClient extends Plugin {
  async afterAdd() {
    // await this.app.pm.add()
  }

  async beforeLoad() {}

  // You can get and modify the app instance here
  async load() {
    this.app.addComponents({
      ActionConfigBlock,
    });

    // Add schema initializer
    this.app.schemaInitializerManager.add(configureActions);

    // Add to block selector
    this.app.schemaInitializerManager.addItem('page:addBlock', 'actionConfig', {
      name: 'actionConfig',
      Component: 'DataBlockInitializer',
      useComponentProps() {
        const { insert } = useSchemaInitializer();
        return {
          title: BlockName,
          icon: 'SettingOutlined',
          componentType: BlockName,
          onCreateBlockSchema({ item }) {
            insert({
              type: 'void',
              'x-component': 'ActionConfigBlock',
              'x-decorator': 'BlockProvider',
              'x-decorator-props': {
                dataSource: item.dataSource,
                collection: item.name,
              },
            });
          },
        };
      },
    });
  }
}

export default ButtonActionNocobaseClient;

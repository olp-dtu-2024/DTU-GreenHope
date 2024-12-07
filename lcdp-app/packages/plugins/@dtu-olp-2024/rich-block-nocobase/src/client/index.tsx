import { Plugin } from '@nocobase/client';
import { configureFields } from './initializer/configureFields';
import { useHeaderPickerProps, useRichBlockProps } from './schema';
import { richSettings } from './settings';
import { richInitializerItem } from './initializer';
import { InfoField } from './schema/infoItem';
import { richTextSettings } from './settings/items/richText';
import { RichBlock } from './component/RichBlock';
import { BlockNameLowercase } from './constants';

export class HeaderPickerNocobaseClient extends Plugin {
  async afterAdd() {
    // await this.app.pm.add()
  }

  async beforeLoad() {}

  // You can get and modify the app instance here
  async load() {
    this.app.addComponents({ InfoField, RichBlock });
    this.app.schemaInitializerManager.add(configureFields);
    this.app.addScopes({
      useHeaderPickerProps,
      useRichBlockProps,
    });
    this.app.schemaSettingsManager.add(richSettings, richTextSettings);
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `dataBlocks.${richInitializerItem.name}`,
      richInitializerItem
    );
  }
}

export default HeaderPickerNocobaseClient;

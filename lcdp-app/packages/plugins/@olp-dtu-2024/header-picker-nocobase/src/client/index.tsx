import { Plugin } from '@nocobase/client';
import { configureFields } from './initializer/configureFields';
import { useHeaderPickerProps } from './schema';
import { headerPickerSettings } from './settings';
import { infoItemSettings } from './schema/infoItem';
import { headerPickerInitializerItem } from './initializer';

export class HeaderPickerNocobaseClient extends Plugin {
  async afterAdd() {
    // await this.app.pm.add()
  }

  async beforeLoad() {}

  // You can get and modify the app instance here
  async load() {
    this.app.schemaInitializerManager.add(configureFields);
    this.app.addScopes({
      useHeaderPickerProps,
    });
    this.app.schemaSettingsManager.add(headerPickerSettings, infoItemSettings);
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `dataBlocks.${headerPickerInitializerItem.name}`, // Sử dụng BlockName thay vì headerPickerInitializerItem.name
      headerPickerInitializerItem // Gọi function để lấy config
    );
  }
}

export default HeaderPickerNocobaseClient;

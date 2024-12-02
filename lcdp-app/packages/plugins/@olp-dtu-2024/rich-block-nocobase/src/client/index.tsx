import { Plugin } from '@nocobase/client';
import { configureFields } from './initializer/configureFields';
import { useHeaderPickerProps } from './schema';
import { headerPickerSettings } from './settings';
import { headerPickerInitializerItem } from './initializer';
import { InfoField } from './schema/infoItem';
import { headerTypeSettings } from './settings/items/headerType';
import { HeaderPickerBlock } from './component/HeaderPickerBlock';

export class HeaderPickerNocobaseClient extends Plugin {
  async afterAdd() {
    // await this.app.pm.add()
  }

  async beforeLoad() {}

  // You can get and modify the app instance here
  async load() {
    this.app.addComponents({ InfoField, HeaderPickerBlock });
    this.app.schemaInitializerManager.add(configureFields);
    this.app.addScopes({
      useHeaderPickerProps,
    });
    this.app.schemaSettingsManager.add(
      headerPickerSettings,
      headerTypeSettings
    );
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `dataBlocks.${headerPickerInitializerItem.name}`, // Sử dụng BlockName thay vì headerPickerInitializerItem.name
      headerPickerInitializerItem // Gọi function để lấy config
    );
  }
}

export default HeaderPickerNocobaseClient;

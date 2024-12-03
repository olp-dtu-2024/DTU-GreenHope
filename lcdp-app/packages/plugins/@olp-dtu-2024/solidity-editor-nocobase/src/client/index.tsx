import { Plugin } from '@nocobase/client';
import { solidityEditorSettings } from './settings';
import { solidityEditorInitializerItem } from './initializer';
import { SolidityEditor } from './component/SolidityEditor';

export class SolidityEditorNocobaseClient extends Plugin {
  async load() {
    // Register components
    this.app.addComponents({ SolidityEditor });

    // Add schema settings
    this.app.schemaSettingsManager.add(solidityEditorSettings);

    // Add to Page level Add block
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `otherBlocks.${solidityEditorInitializerItem.name}`,
      solidityEditorInitializerItem
    );

    // Add to Table popup Add block
    this.app.schemaInitializerManager.addItem(
      'popup:addNew:addBlock',
      `otherBlocks.${solidityEditorInitializerItem.name}`,
      solidityEditorInitializerItem
    );

    // Add to Mobile Add block
    this.app.schemaInitializerManager.addItem(
      'mobilePage:addBlock',
      `otherBlocks.${solidityEditorInitializerItem.name}`,
      solidityEditorInitializerItem
    );
  }
}

export default SolidityEditorNocobaseClient;

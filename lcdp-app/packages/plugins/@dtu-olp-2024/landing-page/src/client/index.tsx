import { Plugin } from '@nocobase/client';
import { Landing } from './component/Landing';
import { landingSettings } from './settings';
import { imageInitializerItem } from './initializer';

export class LandingPageClient extends Plugin {
  async load() {
    // Register components
    this.app.addComponents({ Landing });

    // Add schema settings
    this.app.schemaSettingsManager.add(landingSettings);

    // Add to Page level Add block
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `otherBlocks.${imageInitializerItem.name}`,
      imageInitializerItem
    );

    // Add to Table popup Add block
    this.app.schemaInitializerManager.addItem(
      'popup:addNew:addBlock',
      `otherBlocks.${imageInitializerItem.name}`,
      imageInitializerItem
    );

    // Add to Mobile Add block
    this.app.schemaInitializerManager.addItem(
      'mobilePage:addBlock',
      `otherBlocks.${imageInitializerItem.name}`,
      imageInitializerItem
    );
  }
}

export default LandingPageClient;

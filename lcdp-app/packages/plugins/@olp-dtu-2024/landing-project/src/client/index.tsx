import { Plugin } from '@nocobase/client';
import { Carousel } from './component/Carousel';
import { useCarouselBlockProps } from './schema';
import { carouselInitializerItem } from './initializer/Carousel';
import { carouselSettings } from './settings/Carousel';

export class LandingProjectClient extends Plugin {
  data: any;

  async beforeLoad() {}

  // You can get and modify the app instance here
  async load() {
    this.app.addComponents({ Carousel });
    this.app.schemaSettingsManager.add(carouselSettings);
    this.app.addScopes({ useCarouselBlockProps });

    // { url: 'https://picsum.photos/id/1/1200/300' },
    //       { url: 'https://picsum.photos/id/2/1200/300' },

    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `otherBlocks.${carouselInitializerItem.name}`,
      carouselInitializerItem
    );
  }
}

export default LandingProjectClient;

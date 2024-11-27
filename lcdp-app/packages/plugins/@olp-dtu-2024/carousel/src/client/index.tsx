import { Plugin } from '@nocobase/client';
import { useBlockNameProps } from './schema';
import { Carousel } from './component';
import { carouselInitializerItem } from './initializer';
import { carouselSettings } from './settings';

export class CarouselClient extends Plugin {
  async afterAdd() {
    // await this.app.pm.add()
  }

  async beforeLoad() {}

  // You can get and modify the app instance here
  async load() {
    this.app.addScopes({
      useBlockNameProps,
    });
    this.app.addComponents({
      Carousel,
    });
    this.app.schemaSettingsManager.add(carouselSettings);
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `otherBlocks.${carouselInitializerItem.name}`,
      carouselInitializerItem
    );
  }
}

export default CarouselClient;

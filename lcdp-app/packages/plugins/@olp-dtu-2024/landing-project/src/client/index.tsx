import { Plugin } from '@nocobase/client';
import { Carousel } from './component/Carousel';
import { useCarouselBlockProps } from './schema/carouselSchema';
import { carouselInitializerItem } from './initializer/Carousel';
import { carouselSettings } from './settings/Carousel';

export class LandingProjectClient extends Plugin {
  async beforeLoad() {}

  async load() {
    this.registerScopes();
    this.registerComponents();
    this.registerSettings();
    this.registerInitializers();
  }

  private registerScopes() {
    this.app.addScopes({
      useCarouselBlockProps,
    });
  }

  private registerComponents() {
    this.app.addComponents({
      Carousel,
    });
  }

  private registerSettings() {
    this.app.schemaSettingsManager.add(carouselSettings);
  }

  private registerInitializers() {
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `otherBlocks.${carouselInitializerItem.name}`,
      carouselInitializerItem
    );
  }
}

export default LandingProjectClient;

import { Plugin } from '@nocobase/client';
import { useBlockScopeDecoratorProps, useCarouselBlockProps } from './schema';
import { Carousel } from './component';
import { carouselSettings } from './settings';
import { carouselInitializerItem } from './initializer';
import { CompareButton } from './component/compareButton';
import { CompareButtonInitializer } from './initializer/compareButtonInitializer';

export class CarouselNocobaseClient extends Plugin {
  /**
   * Loads and registers various components, scopes, and settings
   * into the application. This method does the following:
   *
   * 1. Adds a scope for block name properties to the application.
   * 2. Registers the Carousel component with the application.
   * 3. Adds carousel-specific settings to the schema settings manager.
   * 4. Adds an initializer item for adding a block to the page,
   *    using the carousel initializer item.
   *
   * This method assumes that `this.app` provides functionality for
   * adding scopes, components, and initializing schema-related settings.
   */
  async load() {
    this.app.addScopes({
      useBlockScopeDecoratorProps,
      useCarouselBlockProps,
    });
    this.app.addComponents({
      Carousel,
      CompareButton,
      CompareButtonInitializer,
    });
    this.app.schemaSettingsManager.add(carouselSettings);
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `dataBlocks.${carouselInitializerItem.name}`,
      carouselInitializerItem
    );
    this.app.schemaInitializerManager.addItem(
      'table:configureActions',
      'enableActions.customRequest',
      {
        type: 'item',
        name: 'customRequest',
        title: '{{t("Custom request")}}',
        Component: 'CustomRequestInitializer',
      }
    );
    this.app.schemaInitializerManager.addItem(
      'list:configureActions',
      'enableActions.customRequest',
      {
        type: 'item',
        name: 'customRequest',
        title: '{{t("Custom request")}}',
        Component: 'CustomRequestInitializer',
      }
    );
    this.app.schemaInitializerManager.addItem(
      'list:configureActions',
      'enableActions.compareButton',
      {
        type: 'item',
        name: 'compareButton',
        title: '{{t("Compare Transaction")}}',
        Component: 'CompareButtonInitializer',
      }
    );
  }
}

export default CarouselNocobaseClient;

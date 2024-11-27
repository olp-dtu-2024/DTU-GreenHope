import React from 'react';
import { Plugin, SchemaComponent, useAPIClient } from '@nocobase/client';
import { Carousel } from './component/Carousel';
import { useCarouselBlockProps } from './schema/carouselSchema';
import { carouselInitializerItem } from './initializer/Carousel';
import { carouselSettings } from './settings/Carousel';
import { Info } from './component';
import { infoSettings } from './settings/Info';
import { infoInitializerItem } from './initializer/Info';
import { configureFields } from './initializer/configureFields';
import { InfoItem, infoItemSettings } from './schema/configure';

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
      Info,
      InfoItem,
    });
  }

  private registerSettings() {
    this.app.schemaSettingsManager.add(
      carouselSettings,
      infoSettings,
      infoItemSettings
    );
  }

  private registerInitializers() {
    this.app.schemaInitializerManager.add(configureFields);
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `otherBlocks.${carouselInitializerItem.name}`,
      carouselInitializerItem
    );
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `dataBlocks.${infoInitializerItem.name}`,
      infoInitializerItem
    );
  }
}

export default LandingProjectClient;

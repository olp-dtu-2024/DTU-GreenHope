import React from 'react';
import { Plugin, SchemaComponent } from '@nocobase/client';
import { Carousel } from './component/Carousel';
import { useCarouselBlockProps } from './schema/carouselSchema';
import { carouselInitializerItem } from './initializer/Carousel';
import { carouselSettings } from './settings/Carousel';
import { Info } from './component';
import { getInfoSchema, useInfoProps } from './schema/infoSchema';
import { infoSettings } from './settings/Info';
import { infoInitializerItem } from './initializer/Info';
import { configureFields } from './initializer/configureFields';
import { InfoItem, infoItemSettings } from './schema/configure';

export class LandingProjectClient extends Plugin {
  data: any;

  async beforeLoad() {}

  // You can get and modify the app instance here
  async load() {
    this.app.addComponents({ Carousel, Info, InfoItem });
    this.app.schemaSettingsManager.add(
      carouselSettings,
      infoSettings,
      infoItemSettings
    );
    this.app.addScopes({ useCarouselBlockProps, useInfoProps });

    // { url: 'https://picsum.photos/id/1/1200/300' },
    //       { url: 'https://picsum.photos/id/2/1200/300' },

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

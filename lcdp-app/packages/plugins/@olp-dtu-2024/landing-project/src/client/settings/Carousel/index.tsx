import {
  SchemaSettings,
  SchemaSettingsBlockTitleItem,
  SchemaSettingsDataScope,
} from '@nocobase/client';
import { CarouselBlockLowerCase } from '../../constants';
import { heightSchemaSettingsItem } from './items/height';
import { imagesSchemaSettingsItem } from './items/images';
import { objectFitSchemaSettingsItem } from './items/objectFit';

export const carouselSettings = new SchemaSettings({
  name: `blockSettings:${CarouselBlockLowerCase}`,
  items: [
    {
      name: 'editBlockTitle',
      Component: SchemaSettingsBlockTitleItem,
    },
    {
      type: 'remove',
      name: 'remove',
      componentProps: {
        removeParentsIfNoChildren: true,
        breakRemoveOn: {
          'x-component': 'Grid',
        },
      },
    },
    imagesSchemaSettingsItem,
    heightSchemaSettingsItem,
    objectFitSchemaSettingsItem,
  ],
});

import { SchemaSettings, SchemaSettingsBlockTitleItem } from '@nocobase/client';
import { BlockNameLowerCase } from '../constants';
import { heightSchemaSettingsItem } from './items/height';
import { objectFitSchemaSettingsItem } from './items/objectFit';

export const carouselSettings = new SchemaSettings({
  name: `blockSettings:${BlockNameLowerCase}`,
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
    heightSchemaSettingsItem,
    objectFitSchemaSettingsItem,
  ],
});

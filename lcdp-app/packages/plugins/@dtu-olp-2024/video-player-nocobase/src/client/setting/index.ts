import { SchemaSettings } from '@nocobase/client';
import { BlockNameLowercase } from '../constants';
import { urlSchemaSettingsItem } from './url';

export const videoPlayerSettings = new SchemaSettings({
  name: `blockSettings:${BlockNameLowercase}`,
  items: [
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
    urlSchemaSettingsItem,
  ],
});

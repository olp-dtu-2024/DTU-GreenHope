import { SchemaSettings } from '@nocobase/client';
import { blockNameLowercase } from '../constants';

export const landingSettings = new SchemaSettings({
  name: `blockSettings:${blockNameLowercase}`,
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
  ],
});

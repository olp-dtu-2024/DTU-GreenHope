import { SchemaSettings } from '@nocobase/client';
import { InfoBlockLowerCase } from '../../constants';

export const infoSettings = new SchemaSettings({
  name: `blockSettings:${InfoBlockLowerCase}`,
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

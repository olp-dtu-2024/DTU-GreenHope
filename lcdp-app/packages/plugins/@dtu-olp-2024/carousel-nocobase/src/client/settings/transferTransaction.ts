import { SchemaSettings } from '@nocobase/client';

export const carouselSettings = new SchemaSettings({
  name: `blockSettings:compareButtion`,
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

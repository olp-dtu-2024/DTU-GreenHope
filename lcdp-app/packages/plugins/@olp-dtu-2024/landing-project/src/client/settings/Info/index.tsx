import {
  SchemaSettings,
  SchemaSettingsDataScope,
  useAPIClient,
} from '@nocobase/client';
import { InfoBlockLowerCase } from '../../constants';

export const infoSettings = new SchemaSettings({
  name: `blockSettings:${InfoBlockLowerCase}`,
  items: [
    {
      name: SchemaSettingsDataScope.name,
      Component: SchemaSettingsDataScope,
      componentProps: {
        collectionName: 'projects',
        onSubmit: async (data) => {
          console.log('>>>', data);
        },
      },
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
  ],
});

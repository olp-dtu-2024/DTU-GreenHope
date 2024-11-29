import { SchemaSettings, SchemaSettingsDataScope } from '@nocobase/client';
import { BlockNameLowercase } from '../constants';

export const headerPickerSettings = new SchemaSettings({
  name: `blockSettings:${BlockNameLowercase}`,
  items: [
    {
      name: SchemaSettingsDataScope.name,
      Component: SchemaSettingsDataScope,
      componentProps: {
        collectionName: 'projects',
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

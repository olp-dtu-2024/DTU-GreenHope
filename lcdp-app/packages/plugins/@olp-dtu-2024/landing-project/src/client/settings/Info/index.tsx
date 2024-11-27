import {
  SchemaSettingItemContext,
  SchemaSettings,
  SchemaSettingsDataScope,
} from '@nocobase/client';
import { InfoBlockLowerCase } from '../../constants';
import { useCollection } from '@nocobase/client';

export const infoSettings = new SchemaSettings({
  name: `blockSettings:${InfoBlockLowerCase}`,
  items: [
    {
      name: SchemaSettingsDataScope.name,
      Component: SchemaSettingsDataScope,
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

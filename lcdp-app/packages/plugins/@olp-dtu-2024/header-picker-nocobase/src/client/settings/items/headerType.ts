import {
  createSelectSchemaSettingsItem,
  SchemaSettings,
} from '@nocobase/client';
import { BlockNameLowercase } from '../../constants';

export const headerTypeSettings = new SchemaSettings({
  name: `fieldSettings:component:${BlockNameLowercase}`,
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
    createSelectSchemaSettingsItem({
      name: 'headerType',
      title: 'Header Type',
      schemaKey: 'x-component-props.headerType',
      defaultValue: 'h1',
      useOptions() {
        return [
          { label: 'Heading 1', value: 'h1' },
          { label: 'Heading 2', value: 'h2' },
          { label: 'Heading 3', value: 'h3' },
          { label: 'Heading 4', value: 'h4' },
          { label: 'Heading 5', value: 'h5' },
          { label: 'Heading 6', value: 'h6' },
          { label: 'Paragragh', value: 'p' },
        ];
      },
    }),
  ],
});

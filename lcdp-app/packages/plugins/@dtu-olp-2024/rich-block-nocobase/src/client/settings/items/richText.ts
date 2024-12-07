import {
  createSelectSchemaSettingsItem,
  SchemaSettings,
} from '@nocobase/client';

export const richTextSettings = new SchemaSettings({
  name: 'fieldSettings:component:richText',
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
      name: 'richText',
      title: 'Rich Text',
      schemaKey: 'x-component-props.richText',
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

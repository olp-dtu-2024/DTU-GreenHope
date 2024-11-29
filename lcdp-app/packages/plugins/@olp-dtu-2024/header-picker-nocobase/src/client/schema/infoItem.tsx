import React from 'react';
import { useFieldSchema } from '@formily/react';
import { ISchema, SchemaSettings, useCollection } from '@nocobase/client';
import { uid } from '@formily/shared';
import { useHeaderPickerProps } from '.';

export const infoItemSettings = new SchemaSettings({
  name: 'fieldSettings:info',
  items: [
    {
      name: 'remove',
      type: 'remove',
      componentProps: {
        removeParentsIfNoChildren: true,
        breakRemoveOn(s) {
          return s['x-component'] === 'Grid';
        },
      },
    },
    {
      name: 'headerType',
      type: 'select',
      componentProps: {
        options: [
          { label: 'Heading 1', value: 'h1' },
          { label: 'Heading 2', value: 'h2' },
          { label: 'Heading 3', value: 'h3' },
          { label: 'Paragraph', value: 'p' },
        ],
        title: 'Select text type',
      },
    },
  ],
});

export function getInfoItemSchema({ name, key }: { name: string; key: any }) {
  const InfoComponent = () => {
    const { data } = useHeaderPickerProps();
    const schema = useFieldSchema();
    const headerType = schema['x-header-type'] || 'h1';
    const fieldData = data?.find((item) => item[name]);
    const value = fieldData?.[name];
    const Component = headerType;
    return <Component>{value}</Component>;
  };

  return {
    type: 'void',
    'x-collection-field': name,
    'x-collection-field-key': key,
    'x-component': 'Grid.Row',
    properties: {
      [uid()]: {
        type: 'void',
        'x-component': 'Grid.Col',
        properties: {
          [name]: {
            type: 'void',
            'x-component': InfoComponent,
            'x-settings': infoItemSettings.name,
            'x-decorator': 'FormItem',
          },
        },
      },
    },
  } as ISchema;
}

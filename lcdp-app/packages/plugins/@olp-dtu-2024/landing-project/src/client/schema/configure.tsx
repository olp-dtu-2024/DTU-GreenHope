import React from 'react';
import { ISchema, SchemaSettings, useCollection } from '@nocobase/client';
import { useFieldSchema } from '@formily/react';
import { uid } from '@formily/shared';

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
  ],
});

export const InfoItem = () => {
  const fieldSchema = useFieldSchema();
  const collection = useCollection();
  const collectionFieldName = fieldSchema.name;
  return (
    <pre>
      {JSON.stringify(collection.getField(collectionFieldName), null, 2)}
    </pre>
  );
};

export function getInfoItemSchema(collectionFieldName: string) {
  return {
    type: 'void',
    'x-collection-field': collectionFieldName,
    'x-component': 'Grid.Row',
    properties: {
      [uid()]: {
        type: 'void',
        'x-component': 'Grid.Col',
        properties: {
          [collectionFieldName]: {
            type: 'void',
            'x-component': 'InfoItem',
            'x-decorator': 'CardItem',
            'x-settings': infoItemSettings.name,
          },
        },
      },
    },
  } as ISchema;
}

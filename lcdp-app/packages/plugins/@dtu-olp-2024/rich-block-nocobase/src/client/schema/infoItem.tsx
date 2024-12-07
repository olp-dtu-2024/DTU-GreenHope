import React from 'react';
import { ISchema } from '@nocobase/client';
import { useHeaderPickerProps } from '.';
import { useFieldSchema } from '@formily/react';
import { uid } from '@formily/shared';
import { richTextSettings } from '../settings/items/richText';

export const InfoField: React.FC<{ name: string }> = ({ name }) => {
  const { data, loading } = useHeaderPickerProps();
  const schema = useFieldSchema();
  const richText = schema?.['x-component-props']?.richText || 'h1';

  const displayValue = React.useMemo(() => {
    if (!data) return '';
    if (Array.isArray(data)) {
      const fieldData = data.find((item) => item[name]);
      return fieldData?.[name];
    }
    return data[name];
  }, [data, name]);

  const Component = richText as keyof JSX.IntrinsicElements;

  if (loading) return <Component>Loading...</Component>;
  return <Component>{displayValue || 'N/A'}</Component>;
};

// infoItem.tsx
export function getInfoItemSchema({ name }: { name: string }) {
  return {
    type: 'void',
    'x-collection-field': name,
    'x-component': 'Grid.Row',
    properties: {
      [uid()]: {
        type: 'void',
        'x-component': 'Grid.Col',
        properties: {
          [name]: {
            type: 'void',
            'x-component': 'InfoField',
            'x-component-props': {
              name,
              richText: 'h1',
            },
            'x-settings': richTextSettings.name,
            'x-decorator': 'FormItem',
          },
        },
      },
    },
  } as ISchema;
}

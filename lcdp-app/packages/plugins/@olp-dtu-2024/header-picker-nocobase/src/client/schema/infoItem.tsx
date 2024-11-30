import React from 'react';
import { ISchema } from '@nocobase/client';
import { useHeaderPickerProps } from '.';
import { useFieldSchema } from '@formily/react';
import { uid } from '@formily/shared';
import { headerTypeSettings } from '../settings/items/headerType';

export const InfoField: React.FC<{ name: string }> = ({ name }) => {
  const { data, loading } = useHeaderPickerProps();
  const schema = useFieldSchema();
  const headerType = schema?.['x-component-props']?.headerType || 'h1';

  const displayValue = React.useMemo(() => {
    if (!data) return '';
    if (Array.isArray(data)) {
      const fieldData = data.find((item) => item[name] !== undefined);
      return fieldData?.[name];
    }
    return data[name];
  }, [data, name]);

  const Component = headerType as keyof JSX.IntrinsicElements;

  if (loading) return <Component>Loading...</Component>;
  if (!displayValue && displayValue !== 0)
    return <Component>No data</Component>;

  return <Component>{displayValue}</Component>;
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
              headerType: 'h1',
            },
            'x-settings': headerTypeSettings.name,
            'x-decorator': 'FormItem',
          },
        },
      },
    },
  } as ISchema;
}

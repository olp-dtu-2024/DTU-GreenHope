import { ISchema } from '@nocobase/client';
import { useFieldSchema } from '@formily/react';
import { videoPlayerSettings } from '../setting';
import { BlockNameLowercase } from '../constants';

export function useCodeBlockProps() {
  const fieldSchema = useFieldSchema();
  return fieldSchema.parent?.['x-decorator-props']?.[BlockNameLowercase];
}

export const videoPlayerSchema: ISchema = {
  type: 'void',
  'x-component': 'FormItem',
  'x-decorator': 'DataBlockProvider',
  'x-decorator-props': {
    [BlockNameLowercase]: {},
    dataSource: 'main',
    collection: 'smart_contracts',
    action: 'list',
  },
  'x-settings': videoPlayerSettings.name,
  'x-toolbar': 'BlockSchemaToolbar',
  properties: {
    [BlockNameLowercase]: {
      type: 'void',
      'x-component': 'VideoPlayer',
      'x-use-component-props': 'useCodeBlockProps',
    },
  },
};

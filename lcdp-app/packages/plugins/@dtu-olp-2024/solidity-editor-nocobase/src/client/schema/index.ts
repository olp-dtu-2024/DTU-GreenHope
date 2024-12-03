import { ISchema } from '@nocobase/client';
import { BlockName, BlockNameLowercase } from '../constants';
import { solidityEditorSettings } from '../settings';
import { useFieldSchema } from '@formily/react';

export function useCodeBlockProps() {
  const fieldSchema = useFieldSchema();
  return fieldSchema.parent?.['x-decorator-props']?.[BlockNameLowercase];
}

export const solidityEditorSchema: ISchema = {
  type: 'void',
  'x-component': 'CardItem',
  'x-decorator': 'DataBlockProvider',
  'x-decorator-props': {
    [BlockNameLowercase]: {},
    dataSource: 'main',
    collection: 'smart_contracts',
    action: 'list',
  },
  'x-settings': solidityEditorSettings.name,
  'x-toolbar': 'BlockSchemaToolbar',
  properties: {
    [BlockNameLowercase]: {
      type: 'void',
      'x-component': 'SolidityEditor',
      'x-use-component-props': 'useCodeBlockProps',
    },
  },
};

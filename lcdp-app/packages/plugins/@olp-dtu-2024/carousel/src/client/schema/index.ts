import { ISchema } from '@nocobase/client';
import { useFieldSchema } from '@formily/react';
import { BlockNameLowerCase, BlockName } from '../constants';
import { carouselSettings } from '../settings';

export function useBlockNameProps() {
  const fieldSchema = useFieldSchema();
  return fieldSchema.parent?.['x-decorator-props']?.[BlockNameLowerCase];
}

export const carouselSchema: ISchema = {
  type: 'void',
  'x-component': 'CardItem',
  'x-settings': carouselSettings.name,
  'x-decorator-props': {
    [BlockNameLowerCase]: {},
  },
  properties: {
    [BlockNameLowerCase]: {
      type: 'void',
      'x-component': BlockName,
      'x-use-component-props': 'useBlockNameProps',
    },
  },
};

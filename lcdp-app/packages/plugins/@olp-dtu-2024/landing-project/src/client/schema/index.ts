import { ISchema } from '@nocobase/client';
import { useFieldSchema } from '@formily/react';
import { CarouselBlockLowerCase, CarouselBlock } from '../constants';
import { carouselSettings } from '../settings/Carousel';

export function useCarouselBlockProps() {
  const fieldSchema = useFieldSchema();
  return fieldSchema.parent?.['x-decorator-props']?.[CarouselBlockLowerCase];
}

export const carouselSchema: ISchema = {
  type: 'void',
  'x-component': 'CardItem',
  'x-settings': carouselSettings.name,
  'x-decorator-props': {
    [CarouselBlockLowerCase]: {},
  },
  properties: {
    carousel: {
      type: 'void',
      'x-component': CarouselBlock,
      'x-use-component-props': 'useCarouselBlockProps',
    },
  },
};

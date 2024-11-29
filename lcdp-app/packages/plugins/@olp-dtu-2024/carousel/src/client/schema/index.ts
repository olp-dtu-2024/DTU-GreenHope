/**
 * This TypeScript module defines a schema and a hook for managing carousel-related properties within a form framework.
 *
 * The `useBlockNameProps` hook retrieves properties associated with a specific block name from the parent field's schema.
 * It utilizes the `useFieldSchema` hook from the '@formily/react' package to access the schema.
 * The hook specifically targets the `x-decorator-props` of the parent schema and retrieves the properties corresponding to `BlockNameLowerCase`.
 *
 * The `carouselSchema` object implements an `ISchema` type.
 * It describes a form item with a type of 'void', indicating it's a non-form field element used to group other elements.
 * The `x-component` key defines the component name, set to 'FormItem' here.
 * The `x-settings` key applies specific settings named in `carouselSettings.name`.
 * The `x-decorator-props` defines dynamic properties associated with a block name, initialized as an empty object.
 *
 * The `properties` key within `carouselSchema` holds a nested schema configuration.
 * Under the key `BlockNameLowerCase`, this nested schema is defined:
 * - It has a type of 'void', marking it as a structural component rather than an input field.
 * - The `x-component` specifies the component to be used, defined as `BlockName`.
 * - The `x-use-component-props` specifies a function for dynamically determining component properties, utilizing 'useBlockNameProps' for this purpose.
 *
 * Overall, this module facilitates the dynamic definition and retrieval of properties for carousel components within a form structure.
 */

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
  'x-component': 'FormItem',
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

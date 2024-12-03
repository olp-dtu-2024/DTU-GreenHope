import React from 'react';
import {
  SchemaInitializerItemType,
  SelectProps,
  useCollection,
  useCompile,
  useSchemaInitializer,
} from '@nocobase/client';
import { CodeOutlined } from '@ant-design/icons';

import { BlockName, BlockNameLowercase } from '../constants';
import { getHeaderPickerSchema } from '../schema';
import { useT } from '../locale';

export function useFieldOptions(): SelectProps['options'] {
  const collection = useCollection();

  const compile = useCompile();
  return collection.getFields().map((field) => ({
    label: field.uiSchema?.title ? compile(field.uiSchema.title) : field.name,
    value: field.name,
  }));
}

export const headerPickerInitializerItem: SchemaInitializerItemType = {
  name: BlockNameLowercase,
  Component: 'DataBlockInitializer',
  useComponentProps() {
    const { insert } = useSchemaInitializer();
    const t = useT();
    return {
      title: t(BlockName),
      icon: <CodeOutlined />,
      componentType: BlockName,
      useTranslationHooks: useT,
      onCreateBlockSchema({ item }) {
        insert(
          getHeaderPickerSchema({
            dataSource: item.dataSource,
            collection: item.name,
          })
        );
      },
    };
  },
};

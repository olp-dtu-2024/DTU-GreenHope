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
import { getRichSchema } from '../schema';
import { useT } from '../locale';

export function useFieldOptions(): SelectProps['options'] {
  const collection = useCollection();

  const compile = useCompile();
  return collection.getFields().map((field) => ({
    label: field.uiSchema?.title ? compile(field.uiSchema.title) : field.name,
    value: field.name,
  }));
}

export const richInitializerItem: SchemaInitializerItemType = {
  type: 'item',
  name: BlockNameLowercase,
  Component: 'DataBlockInitializer',
  useComponentProps() {
    const { insert } = useSchemaInitializer();
    const t = useT();
    return {
      title: t(`${BlockName} block`),
      icon: <CodeOutlined />,
      componentType: BlockName,
      useTranslationHooks: useT,
      onCreateBlockSchema({ item }) {
        insert(
          getRichSchema({
            dataSource: item.dataSource,
            collection: item.name,
          })
        );
      },
    };
  },
};

import React from 'react';
import {
  SchemaInitializerItemType,
  useSchemaInitializer,
} from '@nocobase/client';
import { BlockNameLowerCase, BlockName } from '../constants';
import { CodeOutlined } from '@ant-design/icons';
import { useT } from '../locale';
import { progressSchema } from '../schema';

export const progressInitializerItem: SchemaInitializerItemType = {
  type: 'item',
  name: BlockNameLowerCase,
  Component: 'DataBlockInitializer',
  icon: 'PlayCircleOutlined',
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
          progressSchema({ dataSource: item.dataSource, collection: item.name })
        );
      },
    };
  },
};

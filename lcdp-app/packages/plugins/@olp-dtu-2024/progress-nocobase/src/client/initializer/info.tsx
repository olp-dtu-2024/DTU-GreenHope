import React from 'react';
import {
  SchemaInitializerItemType,
  useSchemaInitializer,
} from '@nocobase/client';
import { CodeOutlined } from '@ant-design/icons';

import { BlockName, BlockNameLowerCase } from '../constants';
import { useT } from '../locale';
import { progressSchema } from '../schema';

export const infoInitializerItem: SchemaInitializerItemType = {
  name: BlockNameLowerCase,
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
          progressSchema({ dataSource: item.dataSource, collection: item.name })
        );
      },
    };
  },
};

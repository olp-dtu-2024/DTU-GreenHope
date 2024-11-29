import React from 'react';
import {
  SchemaInitializerItemType,
  useSchemaInitializer,
} from '@nocobase/client';
import { CodeOutlined } from '@ant-design/icons';

import { carouselSchema } from '../schema';
import { BlockName, BlockNameLowerCase } from '../constants';
import { useT } from '../locale';

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
          carouselSchema({ dataSource: item.dataSource, collection: item.name })
        );
      },
    };
  },
};

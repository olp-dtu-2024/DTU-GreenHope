import React from 'react';
import {
  SchemaInitializerItemType,
  useDesignable,
  useSchemaInitializer,
} from '@nocobase/client';
import { carouselSchema } from '../schema';
import { BlockNameLowerCase, BlockName } from '../constants';
import { useT } from '../../../../carousel/src/client/locale';
import { CodeOutlined } from '@ant-design/icons';

export const carouselInitializerItem: SchemaInitializerItemType = {
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
          carouselSchema({ dataSource: item.dataSource, collection: item.name })
        );
      },
    };
  },
};

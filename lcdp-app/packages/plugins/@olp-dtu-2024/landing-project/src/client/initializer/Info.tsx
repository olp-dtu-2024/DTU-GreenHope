import React from 'react';
import {
  SchemaInitializerItemType,
  useSchemaInitializer,
} from '@nocobase/client';
import { CodeOutlined } from '@ant-design/icons';

import { getInfoSchema } from '../schema/infoSchema';
import { useT } from '../locale';
import { InfoBlock, InfoBlockLowerCase } from '../constants';

export const infoInitializerItem: SchemaInitializerItemType = {
  name: InfoBlockLowerCase,
  Component: 'DataBlockInitializer',
  useComponentProps() {
    const { insert } = useSchemaInitializer();
    const t = useT();
    return {
      title: t(InfoBlock),
      icon: <CodeOutlined />,
      componentType: InfoBlock,
      useTranslationHooks: useT,
      onCreateBlockSchema({ item }) {
        insert(
          getInfoSchema({ dataSource: item.dataSource, collection: item.name })
        );
      },
    };
  },
};

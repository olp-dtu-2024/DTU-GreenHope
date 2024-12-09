/**
 * This file is part of the NocoBase (R) project.
 * Copyright (c) 2020-2024 NocoBase Co., Ltd.
 * Authors: NocoBase Team.
 *
 * This project is dual-licensed under AGPL-3.0 and NocoBase Commercial License.
 * For more information, please refer to: https://www.nocobase.com/agreement.
 */

import { merge } from '@formily/shared';
import {
  SchemaInitializerItem,
  useCollection_deprecated,
  useSchemaInitializer,
  useSchemaInitializerItem,
} from '@nocobase/client';
import React from 'react';

export const CompareButtonInitializer = () => {
  const itemConfig = useSchemaInitializerItem();
  const { insert } = useSchemaInitializer();
  const { name } = useCollection_deprecated();

  const schema = {
    type: 'void',
    title: '{{ t("Compare Transaction") }}',
    'x-action': 'compare',
    'x-toolbar': 'ActionSchemaToolbar',
    'x-settings': 'actionSettings:compare',
    'x-decorator': 'ACLActionProvider',
    'x-component': 'CompareButton',
    'x-action-settings': {
      // Thêm các settings cần thiết cho compare action
      collection: name,
    },
    'x-component-props': {
      icon: 'CompareOutlined',
      useAction: '{{ useCompareAction }}',
    },
  };

  return (
    <SchemaInitializerItem
      {...itemConfig}
      onClick={() => {
        const s = merge(schema || {}, itemConfig.schema || {});
        itemConfig?.schemaInitialize?.(s);
        insert(s);
      }}
    />
  );
};

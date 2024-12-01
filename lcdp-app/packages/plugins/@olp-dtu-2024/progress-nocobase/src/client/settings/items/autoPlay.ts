import { SchemaSettingsItemType, useDesignable } from '@nocobase/client';
import { useFieldSchema } from '@formily/react';

import { BlockNameLowerCase } from '../../constants';
import { useT } from '../../locale';

export const autoplaySchemaSettingsItem: SchemaSettingsItemType = {
  name: 'autoplay',
  type: 'switch',
  useComponentProps() {
    const filedSchema = useFieldSchema();
    const { deepMerge } = useDesignable();
    const t = useT();

    return {
      title: t('Autoplay'),
      checked:
        !!filedSchema['x-decorator-props']?.[BlockNameLowerCase]?.autoplay,
      onChange(v) {
        deepMerge({
          'x-uid': filedSchema['x-uid'],
          'x-decorator-props': {
            ...filedSchema['x-decorator-props'],
            [BlockNameLowerCase]: {
              ...filedSchema['x-decorator-props']?.[BlockNameLowerCase],
              autoplay: v,
            },
          },
        });
      },
    };
  },
};

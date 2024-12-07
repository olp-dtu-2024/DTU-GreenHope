import { SchemaSettingsItemType, useDesignable } from '@nocobase/client';
import { useFieldSchema } from '@formily/react';
import { useT } from '../../locale';
import { BlockNameLowercase } from '../../constants';

export const heightSchemaSettingsItem: SchemaSettingsItemType = {
  name: 'height',
  type: 'actionModal',
  useComponentProps() {
    const fieldSchema = useFieldSchema();
    const { deepMerge } = useDesignable();
    const t = useT();
    console.log('>>>>', fieldSchema['x-decorator-props']);

    return {
      title: t('Edit Height'),
      schema: {
        type: 'object',
        title: t('Edit Height'),
        properties: {
          height: {
            title: t('Height'),
            type: 'number',
            default:
              fieldSchema['x-decorator-props']?.[BlockNameLowercase]?.height,
            'x-decorator': 'FormItem',
            'x-component': 'InputNumber',
          },
        },
      },
      onSubmit({ height }: any) {
        deepMerge({
          'x-uid': fieldSchema.parent['x-uid'],
          'x-decorator-props': {
            ...fieldSchema['x-decorator-props'],
            [BlockNameLowercase]: {
              ...fieldSchema['x-decorator-props']?.[BlockNameLowercase],
              height,
            },
          },
        });
      },
    };
  },
};

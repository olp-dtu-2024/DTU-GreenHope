import { SchemaSettingsItemType, useDesignable } from '@nocobase/client';
import { useFieldSchema } from '@formily/react';
import { useT } from '../../locale';

export const heightSchemaSettingsItem: SchemaSettingsItemType = {
  name: 'height',
  type: 'actionModal',
  useComponentProps() {
    const filedSchema = useFieldSchema();
    const { deepMerge } = useDesignable();
    const t = useT();

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
              filedSchema['x-decorator-props']?.['myHeaderPicker']?.height,
            'x-decorator': 'FormItem',
            'x-component': 'InputNumber',
          },
        },
      },
      onSubmit({ height }: any) {
        deepMerge({
          'x-uid': filedSchema['x-uid'],
          'x-decorator-props': {
            ...filedSchema['x-decorator-props'],
            ['myHeaderPicker']: {
              ...filedSchema['x-decorator-props']?.['myHeaderPicker'],
              height,
            },
          },
        });
      },
    };
  },
};

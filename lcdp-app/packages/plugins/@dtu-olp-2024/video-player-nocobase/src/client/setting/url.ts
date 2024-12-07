import { SchemaSettingsItemType, useDesignable } from '@nocobase/client';
import { useFieldSchema } from '@formily/react';
import { BlockNameLowercase } from '../constants';

export const urlSchemaSettingsItem: SchemaSettingsItemType = {
  name: 'url',
  type: 'actionModal',
  useComponentProps() {
    const filedSchema = useFieldSchema();
    const { deepMerge } = useDesignable();

    return {
      title: 'Edit url',
      schema: {
        type: 'object',
        title: 'Edit url',
        properties: {
          url: {
            title: 'url',
            type: 'number',
            default:
              filedSchema['x-decorator-props']?.[BlockNameLowercase]?.url,
            'x-decorator': 'FormItem',
            'x-component': 'Input',
          },
        },
      },
      onSubmit({ url }: any) {
        deepMerge({
          'x-uid': filedSchema['x-uid'],
          'x-decorator-props': {
            ...filedSchema['x-decorator-props'],
            [BlockNameLowercase]: {
              ...filedSchema['x-decorator-props']?.[BlockNameLowercase],
              url,
            },
          },
        });
      },
    };
  },
};

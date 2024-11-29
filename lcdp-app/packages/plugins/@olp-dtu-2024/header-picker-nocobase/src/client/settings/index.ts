import {
  SchemaSettings,
  SchemaSettingsDataScope,
  useAPIClient,
  useCollection,
  useDesignable,
} from '@nocobase/client';
import { BlockNameLowercase } from '../constants';
import { useFieldSchema } from '@formily/react';

export const headerPickerSettings = new SchemaSettings({
  name: `blockSettings:${BlockNameLowercase}`,
  items: [
    {
      name: SchemaSettingsDataScope.name,
      Component: SchemaSettingsDataScope,
      useComponentProps: () => {
        const collection = useCollection();
        const api = useAPIClient();
        const fieldSchema = useFieldSchema();
        const currentFilter =
          fieldSchema?.['x-decorator-props']?.params?.filter || {};
        const { deepMerge } = useDesignable();

        return {
          collectionName: collection.name,
          defaultFilter: currentFilter,
          onSubmit: async (data) => {
            const payload = {
              'x-uid': fieldSchema['x-uid'],
              'x-decorator-props': {
                ...fieldSchema['x-decorator-props'],
                params: {
                  filter: {
                    ...currentFilter,
                    ...data.filter,
                  },
                },
              },
            };
            await api
              .request({
                url: `/uiSchemas:patch`,
                method: 'POST',
                data: payload,
              })
              .then((res) => {
                if (res.status === 200) {
                  deepMerge({
                    'x-decorator-props': {
                      ...fieldSchema['x-decorator-props'],
                      params: {
                        filter: {
                          ...currentFilter,
                          ...data.filter,
                        },
                      },
                    },
                  });
                }
              });
          },
        };
      },
    },
    {
      type: 'remove',
      name: 'remove',
      componentProps: {
        removeParentsIfNoChildren: true,
        breakRemoveOn: {
          'x-component': 'Grid',
        },
      },
    },
  ],
});

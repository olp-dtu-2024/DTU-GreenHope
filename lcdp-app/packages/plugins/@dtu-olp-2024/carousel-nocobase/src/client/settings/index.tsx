import {
  SchemaSettings,
  SchemaSettingsBlockTitleItem,
  SchemaSettingsDataScope,
  useAPIClient,
  useCollection,
  useDesignable,
} from '@nocobase/client';
import { BlockNameLowerCase } from '../constants';
import { heightSchemaSettingsItem } from './items/height';
import { objectFitSchemaSettingsItem } from './items/objectFit';
import { useFieldSchema } from '@formily/react';
import { autoplaySchemaSettingsItem } from './items/autoPlay';

export const carouselSettings = new SchemaSettings({
  name: `blockSettings:${BlockNameLowerCase}`,
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
                  appends: ['images'],
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
                        appends: ['images'],
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
      name: 'editBlockTitle',
      Component: SchemaSettingsBlockTitleItem,
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
    heightSchemaSettingsItem,
    objectFitSchemaSettingsItem,
    autoplaySchemaSettingsItem,
  ],
});

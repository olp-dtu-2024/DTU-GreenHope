import {
  CollectionFieldOptions,
  SchemaInitializer,
  SchemaInitializerItemType,
  useCollection,
  useDesignable,
  useSchemaInitializer,
} from '@nocobase/client';
import { ISchema, useFieldSchema } from '@formily/react';
import { Schema } from '@formily/json-schema';
import { getInfoItemSchema } from '../schema/infoItem';
import { BlockNameLowercase } from '../constants';

interface GetFieldInitializerItemOptions {
  collectionField: CollectionFieldOptions;
  schema: ISchema;
  remove: (schema: ISchema) => void;
  insert: (schema: ISchema) => void;
}

function getFieldInitializerItem(options: GetFieldInitializerItemOptions) {
  const { collectionField, schema, remove, insert } = options;
  const title = collectionField.uiSchema?.title || collectionField.name;
  const name = collectionField.name;
  const key = collectionField;

  const collectionFieldSchema = Object.values(schema.properties || {}).find(
    (item) => item['x-collection-field'] === name
  );

  return {
    name,
    title,
    type: 'switch',
    checked: !!collectionFieldSchema,
    onClick() {
      if (collectionFieldSchema) {
        remove(collectionFieldSchema);
        return;
      }

      insert(getInfoItemSchema({ name, key }));
      const headerPickerContainer = schema.properties?.[BlockNameLowercase];
      if (headerPickerContainer) {
        const newSchema = getInfoItemSchema({ name, key });
        if (!headerPickerContainer.properties) {
          headerPickerContainer.properties = {};
        }
        headerPickerContainer.properties[name] = newSchema;

        Schema.compile(schema);

        schema['x-uid'] =
          schema['x-uid'] || Math.random().toString(36).slice(2);
      }
    },
  } as SchemaInitializerItemType;
}

export const configureFields = new SchemaInitializer({
  name: 'info:configureFields',
  icon: 'SettingOutlined',
  title: 'Configure fields',
  items: [
    {
      type: 'itemGroup',
      name: 'fields',
      title: 'Display fields',
      useChildren() {
        const collection = useCollection();
        const { insert } = useSchemaInitializer();
        const { remove } = useDesignable();
        const schema = useFieldSchema();

        const schemaItems = collection
          .getFields()
          .map<SchemaInitializerItemType>((collectionField) =>
            getFieldInitializerItem({
              collectionField,
              schema,
              remove,
              insert,
            })
          );

        return schemaItems;
      },
    },
  ],
});

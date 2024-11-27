import {
  CollectionFieldOptions,
  InsertType,
  ISchema,
  SchemaInitializer,
  SchemaInitializerItemType,
  useCollection,
  useDesignable,
  useSchemaInitializer,
} from '@nocobase/client';
import { useFieldSchema } from '@formily/react';
import { CarouselBlockLowerCase } from '../constants';
import { getInfoItemSchema } from '../schema/configure';

interface GetFieldInitializerItemOptions {
  collectionField: CollectionFieldOptions;
  schema: ISchema; // Update with proper type if available
  remove: (schema: ISchema) => void;
  insert: (schema: ISchema) => void;
}

function getFieldInitializerItem(options: GetFieldInitializerItemOptions) {
  const { collectionField, schema, remove, insert } = options;
  const title = collectionField.uiSchema?.title || collectionField.name;
  const name = collectionField.name;
  const collectionFieldSchema = Object.values(schema.properties || {}).find(
    (item) => item['x-collection-field'] === name
  );
  return {
    name,
    type: 'switch',
    title,
    checked: !!collectionFieldSchema,
    onClick() {
      if (collectionFieldSchema) {
        remove(collectionFieldSchema);
        return;
      }
      insert(getInfoItemSchema(name));
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
        const { insert } = useSchemaInitializer();
        const { remove } = useDesignable();
        const schema = useFieldSchema();
        const collection = useCollection();
        const collectionFieldSchema = Object.values(
          schema.properties || {}
        ).find((item) => item['x-collection-field'] === name);
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

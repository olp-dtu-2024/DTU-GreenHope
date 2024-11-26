import {
  SchemaInitializerItemType,
  useSchemaInitializer,
} from '@nocobase/client';
import { landingSchema } from '../schema';
import { blockName, blockNameLowercase } from '../constants';

export const imageInitializerItem: SchemaInitializerItemType = {
  type: 'item',
  name: blockNameLowercase,
  icon: 'FileImageOutlined',
  useComponentProps() {
    const { insert } = useSchemaInitializer();
    return {
      title: blockName,
      onClick: () => {
        insert(landingSchema);
      },
    };
  },
};

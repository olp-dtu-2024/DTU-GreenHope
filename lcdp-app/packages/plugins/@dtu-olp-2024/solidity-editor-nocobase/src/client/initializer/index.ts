import {
  SchemaInitializerItemType,
  useSchemaInitializer,
  useDataBlockRequest,
  useCollection,
} from '@nocobase/client';
import { solidityEditorSchema } from '../schema';
import { BlockName, BlockNameLowercase } from '../constants';

export const solidityEditorInitializerItem: SchemaInitializerItemType = {
  type: 'item',
  name: BlockNameLowercase,
  icon: 'FileOutlined',
  useComponentProps() {
    const { insert } = useSchemaInitializer();
    return {
      title: BlockName,
      componentType: 'SolidityEditor',
      onClick: () => {
        insert(solidityEditorSchema);
      },
    };
  },
};

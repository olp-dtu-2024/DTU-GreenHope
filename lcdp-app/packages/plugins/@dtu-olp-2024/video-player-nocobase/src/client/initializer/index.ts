import {
  SchemaInitializerItemType,
  useSchemaInitializer,
} from '@nocobase/client';
import { videoPlayerSchema } from '../schema';
import { BlockName, BlockNameLowercase } from '../constants';

export const videoPlayerInitializerItem: SchemaInitializerItemType = {
  type: 'item',
  name: BlockNameLowercase,
  icon: 'FileOutlined',
  useComponentProps() {
    const { insert } = useSchemaInitializer();
    return {
      title: BlockName,
      componentType: 'VideoPlayer',
      onClick: () => {
        insert(videoPlayerSchema);
      },
    };
  },
};

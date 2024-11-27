import {
  SchemaInitializerItemType,
  useSchemaInitializer,
} from '@nocobase/client';

import { carouselSchema } from '../schema';
import { BlockNameLowerCase, BlockName } from '../constants';
import { useT } from '../locale';

export const carouselInitializerItem: SchemaInitializerItemType = {
  type: 'item',
  name: BlockNameLowerCase,
  icon: 'PlayCircleOutlined',
  useComponentProps() {
    const { insert } = useSchemaInitializer();
    const t = useT();
    return {
      title: t(BlockName),
      onClick: () => {
        insert(carouselSchema);
      },
    };
  },
};

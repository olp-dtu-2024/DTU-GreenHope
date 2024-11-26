import {
  SchemaInitializerItemType,
  useSchemaInitializer,
} from '@nocobase/client';

import { carouselSchema } from '../schema';
import { useT } from '../locale';
import { CarouselBlockLowerCase, CarouselBlock } from '../constants';

export const carouselInitializerItem: SchemaInitializerItemType = {
  type: 'item',
  name: CarouselBlockLowerCase,
  icon: 'PlayCircleOutlined',
  useComponentProps() {
    const { insert } = useSchemaInitializer();
    const t = useT();
    return {
      title: t(CarouselBlock),
      onClick: () => {
        insert(carouselSchema);
      },
    };
  },
};

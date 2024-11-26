import { useCollection, useDataBlockRequest } from '@nocobase/client';

import { InfoProps } from '../component';
import { InfoBlock, InfoBlockLowerCase } from '../constants';
import { infoSettings } from '../settings/Info';

export function useInfoProps(): InfoProps {
  const collection = useCollection();
  const { data, loading } = useDataBlockRequest<any[]>();

  return {
    collectionName: collection.name,
    data: data?.data,
    loading: loading,
  };
}

export function getInfoSchema({ dataSource = 'main', collection }) {
  return {
    type: 'void',
    'x-decorator': 'DataBlockProvider',
    'x-decorator-props': {
      dataSource,
      collection,
      action: 'list',
    },
    'x-component': 'CardItem',
    'x-toolbar': 'BlockSchemaToolbar',
    properties: {
      [InfoBlockLowerCase]: {
        type: 'void',
        'x-component': InfoBlock,
        'x-use-component-props': 'useInfoProps',
        'x-settings': infoSettings.name,
      },
    },
  };
}

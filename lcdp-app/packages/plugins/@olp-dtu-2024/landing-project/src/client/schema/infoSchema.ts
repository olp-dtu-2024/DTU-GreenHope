import { InfoBlock, InfoBlockLowerCase } from '../constants';
import { infoSettings } from '../settings/Info';

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
    'x-settings': infoSettings.name,
    properties: {
      [InfoBlockLowerCase]: {
        type: 'void',
        'x-component': InfoBlock,
        'x-use-component-props': 'useInfoProps',
        properties: {
          fields: {
            type: 'void',
            'x-component': 'Grid',
            'x-initializer': 'info:configureFields',
          },
        },
      },
    },
  };
}

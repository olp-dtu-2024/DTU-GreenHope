import {
  css,
  parseCollectionName,
  useCollectionFilterOptions,
} from '@nocobase/client';
import { useForm } from '@formily/react';
import { NAMESPACE } from '../locale';

export const collection = {
  type: 'string',
  title: '{{t("Collection")}}',
  required: true,
  'x-reactions': [],
  'x-decorator': 'FormItem',
  'x-component': 'DataSourceCollectionCascader',
};

export const filter = {
  type: 'object',
  title: '{{t("Filter")}}',
  'x-decorator': 'FormItem',
  'x-component': 'Filter',
  'x-use-component-props': () => {
    // eslint-disable-next-line react-hooks/rules-of-hooks
    const { values } = useForm();
    const [dataSourceName, collectionName] = parseCollectionName(
      values?.collection
    );
    // eslint-disable-next-line react-hooks/rules-of-hooks
    const options = useCollectionFilterOptions(collectionName, dataSourceName);
    return {
      options,
      className: css`
        position: relative;
        width: 100%;
      `,
    };
  },
  'x-component-props': {
    dynamicComponent: 'FilterDynamicComponent',
  },
};

export const appends = {
  type: 'array',
  title: `{{t("Preload associations", { ns: "${NAMESPACE}" })}}`,
  description: `{{t("Please select the associated fields that need to be accessed in subsequent nodes. With more than two levels of to-many associations may cause performance issue, please use with caution.", { ns: "${NAMESPACE}" })}}`,
  'x-decorator': 'FormItem',
  'x-component': 'AppendsTreeSelect',
  'x-component-props': {
    title: 'Preload associations',
    multiple: true,
    useCollection() {
      const { values } = useForm();
      return values?.collection;
    },
  },
  'x-reactions': [
    {
      dependencies: ['collection'],
      fulfill: {
        state: {
          visible: '{{!!$deps[0]}}',
        },
      },
    },
  ],
};

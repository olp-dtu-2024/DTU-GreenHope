import { useEffect, useMemo } from 'react';
import { useParentRecordCommon, useParsedFilter } from '@nocobase/client';
import { BlockNameLowerCase, BlockName } from '../constants';
import { progressSettings } from '../settings';
import { useFieldSchema } from '@formily/react';

function useBlockScopeParams(props) {
  const { filter, parseVariableLoading } = useParsedFilter({
    filterOption: props.params?.filter,
  });

  const params = useMemo(() => {
    return {
      ...props.params,
      appends: props.params?.appends || [],
      filter,
    };
  }, [JSON.stringify(filter), props.params]);

  return { params, parseVariableLoading };
}

export function useBlockScopeDecoratorProps(props) {
  const { params, parseVariableLoading } = useBlockScopeParams(props);
  let parentRecord;

  if (props.association) {
    parentRecord = useParentRecordCommon(props.association);
  }

  return {
    params,
    parentRecord,
    parseVariableLoading,
  };
}

export function useProgressBlockProps() {
  const fieldSchema = useFieldSchema();

  return fieldSchema.parent?.['x-decorator-props']?.[BlockNameLowerCase];
}

export const progressSchema = ({ dataSource = 'main', collection }) => {
  return {
    type: 'void',
    'x-decorator': 'DataBlockProvider',
    'x-component': 'FormItem',
    'x-settings': progressSettings.name,
    'x-toolbar': 'BlockSchemaToolbar',
    'x-decorator-props': {
      [BlockNameLowerCase]: {}, // Height & ObjectFit
      rowKey: 'id',
      runWhenParamsChanged: true,
      readPretty: true,
      dataSource,
      collection,
      action: 'list',
    },
    'x-use-decorator-props': 'useBlockScopeDecoratorProps',
    properties: {
      [BlockNameLowerCase]: {
        type: 'void',
        'x-component': BlockName,
        'x-use-component-props': 'useProgressBlockProps',
      },
    },
  };
};

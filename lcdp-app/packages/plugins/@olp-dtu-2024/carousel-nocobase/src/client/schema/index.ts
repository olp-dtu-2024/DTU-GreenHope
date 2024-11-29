import { useMemo } from 'react';
import { useParentRecordCommon, useParsedFilter } from '@nocobase/client';
import { BlockNameLowerCase, BlockName } from '../constants';
import { carouselSettings } from '../settings';

function useBlockScopeParams(props) {
  const { filter, parseVariableLoading } = useParsedFilter({
    filterOption: props.params?.filter,
  });
  const appends = useMemo(() => {
    const arr: string[] = [];
    const start = props.fieldNames?.start;
    const end = props.fieldNames?.end;

    if (Array.isArray(start) && start.length >= 2) {
      arr.push(start[0]);
    }
    if (Array.isArray(end) && end.length >= 2) {
      arr.push(end[0]);
    }

    return arr;
  }, [props.fieldNames]);

  const params = useMemo(() => {
    return {
      ...props.params,
      appends: [...appends, ...(props.params?.appends || []), 'images'],
      filter,
    };
  }, [appends, JSON.stringify(filter), props.params]);

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

export const carouselSchema = ({ dataSource = 'main', collection }) => {
  return {
    type: 'void',
    'x-decorator': 'DataBlockProvider',
    'x-component': 'FormItem',
    'x-settings': carouselSettings.name,
    'x-toolbar': 'BlockSchemaToolbar',
    'x-decorator-props': {
      rowKey: 'id',
      runWhenParamsChanged: true,
      readPretty: true,
      dataSource,
      collection,
      action: 'list',
      request: {
        params: { appends: ['images'] },
      },
    },
    'x-use-decorator-props': 'useBlockScopeDecoratorProps',
    properties: {
      [BlockNameLowerCase]: {
        type: 'void',
        'x-component': BlockName,
        'x-use-component-props': 'useBlockScopeDecoratorProps',
      },
    },
  };
};

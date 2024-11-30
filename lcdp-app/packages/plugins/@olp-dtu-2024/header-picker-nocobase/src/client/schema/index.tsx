import React, { useMemo } from 'react';
import {
  SelectProps,
  useCollection,
  useCompile,
  useDataBlockRequest,
  useParentRecordCommon,
  useParsedFilter,
} from '@nocobase/client';
import { BlockName, BlockNameLowercase } from '../constants';
import { headerPickerSettings } from '../settings';
import { InfoField } from './infoItem';

export interface HeaderPickerProps {
  collectionName: string;
  data?: any[];
  loading?: boolean;
}

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
      appends: [...appends, ...(props.params?.appends || [])],
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

export function useHeaderPickerProps(): HeaderPickerProps {
  const collection = useCollection();
  const { data, loading } = useDataBlockRequest<any[]>();

  console.log('HeaderPickerProps:', {
    collectionName: collection.name,
    data: data?.data,
    loading,
  });

  return {
    collectionName: collection.name,
    data: data?.data,
    loading: loading,
  };
}

export function useFieldOptions(): SelectProps['options'] {
  const collection = useCollection();
  const compile = useCompile();
  return collection.getFields().map((field) => ({
    label: field.uiSchema?.title ? compile(field.uiSchema.title) : field.name,
    value: field.name,
  }));
}

export function getHeaderPickerSchema({ dataSource = 'main', collection }) {
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
    'x-settings': headerPickerSettings.name,
    'x-designer': 'FormV2.Designer',
    'x-component-props': {
      useConfigureFields: true,
    },
    'x-use-decorator-props': 'useBlockScopeDecoratorProps',
    properties: {
      [BlockNameLowercase]: {
        type: 'void',
        'x-component': 'HeaderPickerBlock',
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

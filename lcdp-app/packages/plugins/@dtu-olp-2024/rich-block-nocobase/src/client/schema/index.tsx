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
import { richSettings } from '../settings';
import { useFieldSchema } from '@formily/react';

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

  return {
    collectionName: collection.name,
    data: data?.data,
    loading: loading,
  };
}

export function useRichBlockProps() {
  const fieldSchema = useFieldSchema();
  return fieldSchema.parent?.['x-decorator-props']?.[BlockNameLowercase];
}

export function useFieldOptions(): SelectProps['options'] {
  const collection = useCollection();
  const compile = useCompile();
  return collection.getFields().map((field) => ({
    label: field.uiSchema?.title ? compile(field.uiSchema.title) : field.name,
    value: field.name,
  }));
}

export function getRichSchema({ dataSource = 'main', collection }) {
  return {
    type: 'void',
    'x-decorator': 'DataBlockProvider',
    'x-decorator-props': {
      [BlockNameLowercase]: {},
      dataSource,
      collection,
      action: 'list',
    },
    'x-component': 'CardItem',
    'x-toolbar': 'BlockSchemaToolbar',
    'x-settings': richSettings.name,
    'x-component-props': {
      useConfigureFields: true,
    },
    'x-use-decorator-props': 'useBlockScopeDecoratorProps',
    'x-use-component-props': 'useRichBlockProps',

    properties: {
      [BlockNameLowercase]: {
        type: 'void',
        'x-component': `${BlockName}Block`,
        'x-use-component-props': 'useRichBlockProps',
        properties: {
          fields: {
            type: 'void',
            'x-component': 'Grid',
            'x-initializer': 'richText:configureFields',
          },
        },
      },
    },
  };
}

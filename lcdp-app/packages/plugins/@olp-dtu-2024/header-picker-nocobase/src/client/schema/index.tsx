import React from 'react';
import {
  SelectProps,
  useCollection,
  useCompile,
  useDataBlockRequest,
} from '@nocobase/client';
import { BlockNameLowercase } from '../constants';
import { headerPickerSettings } from '../settings';
import { HeaderPickerComponent } from '../component/headerPicker';

export interface HeaderPickerProps {
  collectionName: string;
  data?: any[];
  loading?: boolean;
}

export function useHeaderPickerProps(): HeaderPickerProps {
  console.log('Hook useHeaderPickerProps được gọi');
  const collection = useCollection();
  const { data, loading } = useDataBlockRequest<any[]>();

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
    properties: {
      [BlockNameLowercase]: {
        type: 'void',
        'x-component': HeaderPickerComponent,
        'x-use-component-props': 'useHeaderPickerProps',
        properties: {}, // This will be populated dynamically
      },
      fields: {
        type: 'void',
        'x-component': 'Grid',
        'x-initializer': 'info:configureFields',
      },
    },
  };
}

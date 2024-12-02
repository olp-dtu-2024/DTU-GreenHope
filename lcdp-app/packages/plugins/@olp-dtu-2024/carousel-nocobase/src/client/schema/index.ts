import { useMemo } from 'react';
import { useParentRecordCommon, useParsedFilter } from '@nocobase/client';
import { BlockNameLowerCase, BlockName } from '../constants';
import { carouselSettings } from '../settings';
import { useFieldSchema } from '@formily/react';

/**
 * A custom hook that processes the block scope parameters.
 *
 * This hook analyzes and constructs additional parameters necessary for manipulating
 * block scope data by integrating filter settings and appending fields derived from
 * provided field names.
 *
 * @param {Object} props - An object containing properties for processing parameters.
 * @param {Object} props.params - Original parameters including filters and appends.
 * @param {Object} [props.fieldNames] - Optional object containing start and end field names.
 *
 * @returns {Object} An object that includes:
 * - `params`: A combined object of existing parameters with appended fields and filters.
 * - `parseVariableLoading`: A flag indicating the state of variable parsing, from useParsedFilter.
 */
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

/**
 * Custom hook to generate props for block scope decoration.
 *
 * This hook combines parameters, parent records, and loading state related to variable parsing
 * to produce a cohesive object for use in decorators in a form-like structure.
 *
 * @param {Object} props - Properties object containing necessary parameters and association info.
 * @param {Object} props.params - An object containing various parameters for processing.
 * @param {string} [props.association] - Optional association key used to fetch a parent record.
 *
 * @returns {Object} An object consisting of:
 * - `params`: Combined parameters including filter and appends.
 * - `parentRecord`: Parent record fetched based on the provided association, if any.
 * - `parseVariableLoading`: A flag indicating if variable parsing is in progress.
 */
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

export function useCarouselBlockProps() {
  const fieldSchema = useFieldSchema();
  return fieldSchema.parent?.['x-decorator-props']?.[BlockNameLowerCase];
}

/**
 * Generates a carousel schema configuration object.
 *
 * This function creates a schema object tailored for carousel components
 * within a form. The schema structure defines several properties and
 * settings necessary for the carousel's operation within the application.
 *
 * @param {Object} options - Options for schema customization.
 * @param {string} [options.dataSource='main'] - Specifies the data source to be used.
 * @param {string} options.collection - The collection name associated with the schema.
 *
 * @returns {Object} A schema object configured for a carousel block.
 *
 * The returned schema object includes the following properties:
 * - `type`: Defines the root type as 'void'.
 * - `x-decorator`: Specifies 'DataBlockProvider' as a decorator.
 * - `x-component`: Indicates the use of 'FormItem' component.
 * - `x-settings`: Uses the defined `carouselSettings.name`.
 * - `x-toolbar`: Adds a toolbar identified by 'BlockSchemaToolbar'.
 * - `x-decorator-props`: Configures properties for the decorator, including:
 *    - `rowKey`: Key identifier within rows, set to 'id'.
 *    - `runWhenParamsChanged`: Boolean flag set to true for running on parameter changes.
 *    - `readPretty`: Boolean flag set to true for read-only mode.
 *    - `dataSource`: Data source utilized, defaulted to 'main'.
 *    - `collection`: Name of the collection, provided by the caller.
 *    - `action`: Operation action type, set to 'list'.
 * - `x-use-decorator-props`: Injects decorator props via 'useBlockScopeDecoratorProps'.
 * - `properties`: Nested properties configuration, including:
 *    - `[BlockNameLowerCase]`: Placeholder for a property with:
 *      - `type`: Set to 'void'.
 *      - `x-component`: Uses the component defined by `BlockName`.
 *      - `x-use-component-props`: Assigns component props through 'useCarouselBlockProps'.
 */
export const carouselSchema = ({ dataSource = 'main', collection }) => {
  return {
    type: 'void',
    'x-decorator': 'DataBlockProvider',
    'x-component': 'FormItem',
    'x-settings': carouselSettings.name,
    'x-toolbar': 'BlockSchemaToolbar',
    'x-decorator-props': {
      [BlockNameLowerCase]: {},
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
        'x-use-component-props': 'useCarouselBlockProps',
      },
    },
  };
};

import { useEffect, useMemo } from 'react';
import { useParentRecordCommon, useParsedFilter } from '@nocobase/client';
import { BlockNameLowerCase, BlockName } from '../constants';
import { progressSettings } from '../settings';
import { useFieldSchema } from '@formily/react';

/**
 * A custom hook that constructs and returns a set of parameters for block scope,
 * along with a loading state for parsing variables.
 *
 * @param {Object} props - The properties object passed to this hook.
 * @param {Object} [props.params] - The current parameters, may include additional properties.
 * @param {Array} [props.params.appends] - An optional array of appended parameters.
 * @param {Object} [props.params.filter] - An optional filter configuration used in parsing the filter.
 *
 * @returns {Object} An object containing:
 * - params: The constructed parameters object, combining provided parameters,
 *   computed filter, and any additional appended parameters.
 * - parseVariableLoading: A boolean indicating the loading state of variable parsing.
 *
 * Utilizes the `useParsedFilter` hook to parse filters based on the provided filter
 * options and combines the resulting filter with the existing parameters
 * including any appended parameters. The `useMemo` hook is used to optimize
 * re-computation by memoizing the parameters based on changes to the filter
 * and parameters.
 */
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

/**
 * Constructs a schema configuration for a progress block with specified data source and collection.
 *
 * @param {Object} options - Configuration options for the progress schema.
 * @param {string} [options.dataSource='main'] - The data source to use for the schema. Defaults to 'main'.
 * @param {string} options.collection - The collection name to be used in the schema.
 *
 * @returns {Object} A schema object defining a progress block, including:
 * - type: The type of the block, set to 'void'.
 * - x-decorator: Specifies the decorator to be used, 'DataBlockProvider'.
 * - x-component: The main component for the block, 'CardItem'.
 * - x-settings: Settings reference for the block using `progressSettings.name`.
 * - x-toolbar: Specifies the toolbar to be used, 'BlockSchemaToolbar'.
 * - x-decorator-props: An object containing additional properties for the decorator:
 *   - rowKey: The key used for row identification, set to 'id'.
 *   - runWhenParamsChanged: Boolean indicating if the block should re-run when parameters change, set to true.
 *   - readPretty: Boolean indicating if the block is in read-only mode, set to true.
 *   - dataSource: The data source for the schema.
 *   - collection: The collection name for the data.
 *   - action: The action type for the block, set to 'list'.
 * - x-use-decorator-props: Hook for obtaining additional decorator props, 'useBlockScopeDecoratorProps'.
 * - properties: Contains nested properties for the block:
 *   - [BlockNameLowerCase]: An object defining a nested component:
 *     - type: The type of the nested component, set to 'void'.
 *     - x-component: The component name for the nested block, using `BlockName`.
 *     - x-use-component-props: Hook for obtaining component props, 'useProgressBlockProps'.
 */
export const progressSchema = ({ dataSource = 'main', collection }) => {
  return {
    type: 'void',
    'x-decorator': 'DataBlockProvider',
    'x-component': 'CardItem',
    'x-settings': progressSettings.name,
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
        'x-use-component-props': 'useProgressBlockProps',
      },
    },
  };
};

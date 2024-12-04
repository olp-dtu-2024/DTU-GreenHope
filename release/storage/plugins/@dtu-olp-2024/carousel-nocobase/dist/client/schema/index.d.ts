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
export declare function useBlockScopeDecoratorProps(props: any): {
    params: any;
    parentRecord: any;
    parseVariableLoading: boolean;
};
export declare function useCarouselBlockProps(): any;
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
export declare const carouselSchema: ({ dataSource, collection }: {
    dataSource?: string;
    collection: any;
}) => {
    type: string;
    'x-decorator': string;
    'x-component': string;
    'x-settings': string;
    'x-toolbar': string;
    'x-decorator-props': {
        [x: string]: any;
        rowKey: string;
        runWhenParamsChanged: boolean;
        readPretty: boolean;
        dataSource: string;
        collection: any;
        action: string;
    };
    'x-use-decorator-props': string;
    properties: {
        [x: string]: {
            type: string;
            'x-component': string;
            'x-use-component-props': string;
        };
    };
};

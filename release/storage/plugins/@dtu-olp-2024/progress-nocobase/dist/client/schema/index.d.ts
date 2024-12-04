export declare function useBlockScopeDecoratorProps(props: any): {
    params: any;
    parentRecord: any;
    parseVariableLoading: boolean;
};
export declare function useProgressBlockProps(): any;
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
export declare const progressSchema: ({ dataSource, collection }: {
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

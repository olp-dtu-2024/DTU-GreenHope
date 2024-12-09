import { SelectProps } from '@nocobase/client';
export interface HeaderPickerProps {
    collectionName: string;
    data?: any[];
    loading?: boolean;
}
export declare function useBlockScopeDecoratorProps(props: any): {
    params: any;
    parentRecord: any;
    parseVariableLoading: boolean;
};
export declare function useHeaderPickerProps(): HeaderPickerProps;
export declare function useRichBlockProps(): any;
export declare function useFieldOptions(): SelectProps['options'];
export declare function getRichSchema({ dataSource, collection }: {
    dataSource?: string;
    collection: any;
}): {
    type: string;
    'x-decorator': string;
    'x-decorator-props': {
        [x: string]: any;
        dataSource: string;
        collection: any;
        action: string;
    };
    'x-component': string;
    'x-toolbar': string;
    'x-settings': string;
    'x-component-props': {
        useConfigureFields: boolean;
    };
    'x-use-decorator-props': string;
    'x-use-component-props': string;
    properties: {
        [x: string]: {
            type: string;
            'x-component': string;
            'x-use-component-props': string;
            properties: {
                fields: {
                    type: string;
                    'x-component': string;
                    'x-initializer': string;
                };
            };
        };
    };
};

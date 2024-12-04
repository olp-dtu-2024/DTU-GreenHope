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
export declare function useFieldOptions(): SelectProps['options'];
export declare function getHeaderPickerSchema({ dataSource, collection }: {
    dataSource?: string;
    collection: any;
}): {
    type: string;
    'x-decorator': string;
    'x-decorator-props': {
        myHeaderPicker: {};
        dataSource: string;
        collection: any;
        action: string;
    };
    'x-component': string;
    'x-toolbar': string;
    'x-settings': string;
    'x-designer': string;
    'x-component-props': {
        useConfigureFields: boolean;
    };
    'x-use-decorator-props': string;
    properties: {
        [x: string]: {
            type: string;
            'x-component': string;
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

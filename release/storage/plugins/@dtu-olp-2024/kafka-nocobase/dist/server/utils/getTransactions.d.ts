export declare const getTransaction: (config: {
    abi: any;
    contractAddress: string;
    provider: string;
}) => Promise<{
    transaction_code: any;
    amount: number;
    direction: any;
    datetime: number;
}[]>;

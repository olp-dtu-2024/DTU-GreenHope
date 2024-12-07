interface Transaction {
    transaction_code: string;
    amount: number;
    direction: string;
    datetime: number;
}
export declare const getTransaction: (config: {
    abi: any;
    contractAddress: string;
    provider: string;
}) => Promise<Transaction[]>;
export {};

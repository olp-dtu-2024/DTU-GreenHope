export declare const deployTransaction: (config: {
    abi: any;
    contractAddress: string;
    provider: string;
    private_key: string;
}, data?: {
    transaction_id: string;
    direction: string;
    receiveAmount: number;
    transferAmount: number;
}[]) => Promise<any>;

import Web3 from 'web3';
export declare const handleInstanceWeb3: () => Promise<{
    balance: string;
    address: any;
    instance: Web3<import("web3-eth").RegisteredSubscription>;
}>;

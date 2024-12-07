import { ethers } from 'ethers';

interface Transaction {
  transaction_code: string;
  amount: number;
  direction: string;
  datetime: number;
}

export const getTransaction = async (config: {
  abi: any;
  contractAddress: string;
  provider: string;
}): Promise<Transaction[]> => {
  const { abi, contractAddress, provider } = config;

  try {
    const ethersProvider = new ethers.JsonRpcProvider(provider);
    const contract = new ethers.Contract(contractAddress, abi, ethersProvider);

    // First check if method exists
    if (!contract.getAllTransactions) {
      throw new Error('Contract does not have getAllTransactions method');
    }

    const transactions = await contract.getAllTransactions();

    if (!transactions || transactions === '0x') {
      console.warn('No transactions found');
      return [];
    }

    if (!Array.isArray(transactions)) {
      console.warn('Invalid response format:', transactions);
      return [];
    }

    const mappedTransactions = transactions.map((tx) => ({
      transaction_code: tx[0] || '',
      amount:
        typeof tx[1] === 'bigint' ? Number(tx[1]) : parseInt(tx[1] || '0'),
      direction: tx[2] || '',
      datetime:
        typeof tx[3] === 'bigint' ? Number(tx[3]) : parseInt(tx[3] || '0'),
    }));

    return mappedTransactions;
  } catch (error) {
    console.error('Error fetching transactions:', error);
    return [];
  }
};

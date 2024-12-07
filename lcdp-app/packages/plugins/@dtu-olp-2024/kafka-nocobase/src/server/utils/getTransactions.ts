import { ethers } from 'ethers';

export const getTransaction = async (config: {
  abi: any;
  contractAddress: string;
  provider: string;
}) => {
  const { abi, contractAddress, provider } = config;

  const ethersProvider = new ethers.JsonRpcProvider(provider);
  const contract = new ethers.Contract(contractAddress, abi, ethersProvider);

  try {
    const transactions = await contract.getAllTransactions();
    console.log('Transactions:', transactions);

    if (!transactions || !Array.isArray(transactions)) {
      throw new Error('Invalid transactions data');
    }

    const mappedTransactions = transactions.map((tx) => ({
      transaction_code: tx[0],
      amount: parseInt(tx[1]),
      direction: tx[2],
      datetime: parseInt(tx[3]),
    }));

    console.warn(mappedTransactions, '<<');

    return mappedTransactions;
  } catch (error) {
    console.error('Error fetching transactions:', error);
  }
};

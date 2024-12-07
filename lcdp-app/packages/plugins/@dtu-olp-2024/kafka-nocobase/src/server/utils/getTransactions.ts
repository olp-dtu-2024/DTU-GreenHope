import { ethers } from 'ethers';

export const getTransaction = async (config: {
  abi: any;
  contractAddress: string;
  provider: string;
}) => {
  const { abi, contractAddress, provider } = config;

  // Create provider and contract instances using ethers
  const ethersProvider = new ethers.JsonRpcProvider(provider);
  const contract = new ethers.Contract(contractAddress, abi, ethersProvider);

  try {
    // Call the contract method using ethers syntax
    const transactions = await contract.getAllTransactions();

    if (!transactions || !Array.isArray(transactions)) {
      throw new Error('Invalid transactions data');
    }

    const mappedTransactions = transactions.map((tx) => ({
      transaction_code: tx[0],
      amount: parseInt(tx[1]),
      direction: tx[2],
      datetime: parseInt(tx[3]),
    }));

    return mappedTransactions;
  } catch (error) {
    console.error('Error fetching transactions:', error);
  }
};

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

    if (!contract.getAllTransactions) {
      throw new Error('Contract does not have getAllTransactions method');
    }

    const [txCodes, amounts, directions, datetimes] =
      await contract.getAllTransactions();

    if (
      !Array.isArray(txCodes) ||
      !Array.isArray(amounts) ||
      !Array.isArray(directions) ||
      !Array.isArray(datetimes)
    ) {
      console.warn('Invalid response format from contract');
      return [];
    }

    const length = txCodes.length;
    if (
      length !== amounts.length ||
      length !== directions.length ||
      length !== datetimes.length
    ) {
      console.warn('Mismatched array lengths in response');
      return [];
    }

    const mappedTransactions: Transaction[] = Array.from(
      { length },
      (_, i) => ({
        transaction_code: txCodes[i]?.toString() || '',
        amount:
          typeof amounts[i] === 'bigint'
            ? Number(amounts[i])
            : parseInt(amounts[i]?.toString() || '0'),
        direction: directions[i]?.toString() || '',
        datetime:
          typeof datetimes[i] === 'bigint'
            ? Number(datetimes[i])
            : parseInt(datetimes[i]?.toString() || '0'),
      })
    );

    return mappedTransactions;
  } catch (error) {
    console.error('Error fetching transactions:', error);
    return [];
  }
};

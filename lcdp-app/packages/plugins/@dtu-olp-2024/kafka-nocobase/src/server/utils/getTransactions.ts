import Web3 from 'web3';
export const getTransaction = async (config: {
  abi: any;
  contractAddress: string;
  provider: string;
}) => {
  const { abi, contractAddress, provider } = config;
  const web3 = new Web3(new Web3.providers.HttpProvider(provider));
  const contract = new web3.eth.Contract(abi, contractAddress);
  try {
    const transactions = await contract.methods.getAllTransactions().call();
    const mappedTransactions = transactions.map((tx) => ({
      transaction_code: tx[0],
      amount: parseInt(tx[1]),
      direction: tx[2],
      datetime: parseInt(tx[3]),
    }));
    return mappedTransactions;
  } catch (error) {
    console.error('Lỗi khi lấy giao dịch:', error);
  }
};

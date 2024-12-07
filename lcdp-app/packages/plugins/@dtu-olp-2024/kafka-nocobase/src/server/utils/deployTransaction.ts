import { ethers } from 'ethers';

export const deployTransaction = async (
  config: {
    abi: any;
    contractAddress: string;
    provider: string;
    private_key: string;
  },
  data?: any[]
) => {
  const { abi, contractAddress, private_key, provider } = config;

  // Create provider and signer
  const ethersProvider = new ethers.JsonRpcProvider(provider);
  const signer = new ethers.Wallet(private_key, ethersProvider);

  // Create contract instance
  const contract = new ethers.Contract(contractAddress, abi, signer);

  const transactionsData = data?.map((item) => {
    return {
      transaction_code: item.transaction_id,
      amount:
        item.receiveAmount === 0 ? item.transferAmount : item.receiveAmount,
      direction: item.transferAmount === 0 ? 'INCOMING' : 'OUTCOMING',
      datetime: Math.floor(Date.now() / 1000),
    };
  });

  try {
    // Estimate gas
    const gasEstimate =
      await contract.createTransactions.estimateGas(transactionsData);
    const gasPrice = await ethersProvider.getFeeData();

    // Send transaction
    const tx = await contract.createTransactions(transactionsData, {
      gasLimit: gasEstimate,
      gasPrice: gasPrice.gasPrice,
    });

    // Wait for transaction receipt
    const receipt = await tx.wait();
    console.log('Giao dịch đã được gửi thành công:', receipt);

    return receipt;
  } catch (error) {
    console.error('Lỗi khi gửi giao dịch:', error);
    throw error;
  }
};

import { ethers } from 'ethers';

const MAX_RETRIES = 3;
const RETRY_DELAY = 2000;

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
  console.warn(provider);

  if (!provider.startsWith('http://') && !provider.startsWith('https://')) {
    throw new Error('Invalid provider URL format');
  }

  let retries = 0;
  let ethersProvider;

  while (retries < MAX_RETRIES) {
    try {
      ethersProvider = new ethers.JsonRpcProvider(provider);
      await ethersProvider.getNetwork();
      break;
    } catch (error) {
      retries++;
      if (retries === MAX_RETRIES) {
        console.error(`Failed to connect to provider after ${MAX_RETRIES} attempts. Please check if:
          1. The provider URL is correct
          2. The Ethereum node is running
          3. Network connectivity is available`);
      }
      console.log(
        `Connection attempt ${retries} failed, retrying in ${RETRY_DELAY / 1000}s...`
      );
      await new Promise((resolve) => setTimeout(resolve, RETRY_DELAY));
    }
  }

  const signer = new ethers.Wallet(private_key, ethersProvider);
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
    const gasEstimate =
      await contract.createTransactions.estimateGas(transactionsData);
    const gasPrice = await ethersProvider.getFeeData();

    const tx = await contract.createTransactions(transactionsData, {
      gasLimit: gasEstimate,
      gasPrice: gasPrice.gasPrice,
    });

    console.warn('transactionsData:', transactionsData);

    const receipt = await tx.wait();
    console.log('Transaction sent successfully:', receipt);
    return receipt;
  } catch (error) {
    console.error('Error sending transaction:', error);
    throw error;
  }
};

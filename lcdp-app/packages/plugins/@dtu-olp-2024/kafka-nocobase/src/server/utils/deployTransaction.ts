import Web3 from 'web3';
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
  const web3 = new Web3(new Web3.providers.HttpProvider(provider));

  const contract = new web3.eth.Contract(abi, contractAddress);

  const account = web3.eth.accounts.privateKeyToAccount(private_key);

  web3.eth.accounts.wallet.add(account);

  const fromAddress = account.address;

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
    const tx = contract.methods.createTransactions(transactionsData);

    const gas = await tx.estimateGas({ from: fromAddress });
    const gasPrice = await web3.eth.getGasPrice();

    const receipt = await tx.send({
      from: fromAddress,
      gas,
      gasPrice,
    });

    console.log('Giao dịch đã được gửi thành công:', receipt);
  } catch (error) {
    console.error('Lỗi khi gửi giao dịch:', error);
  }
};

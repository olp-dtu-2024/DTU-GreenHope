import Web3 from 'web3';

export const handleInstanceWeb3 = async () => {
  let instance = await (window as any).ethereum.request({
    method: 'eth_requestAccounts',
  });
  const web3 = new Web3((window as any).ethereum);
  const balance = await web3?.eth?.getBalance(instance[0]);
  const balanceEth = web3.utils.fromWei(balance, 'ether');
  return {
    balance: Number(balanceEth).toFixed(3),
    address: instance[0],
    instance: web3,
  };
};

/**
 * This file is part of the NocoBase (R) project.
 * Copyright (c) 2020-2024 NocoBase Co., Ltd.
 * Authors: NocoBase Team.
 *
 * This project is dual-licensed under AGPL-3.0 and NocoBase Commercial License.
 * For more information, please refer to: https://www.nocobase.com/agreement.
 */

var __defProp = Object.defineProperty;
var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
var __getOwnPropNames = Object.getOwnPropertyNames;
var __hasOwnProp = Object.prototype.hasOwnProperty;
var __export = (target, all) => {
  for (var name in all)
    __defProp(target, name, { get: all[name], enumerable: true });
};
var __copyProps = (to, from, except, desc) => {
  if (from && typeof from === "object" || typeof from === "function") {
    for (let key of __getOwnPropNames(from))
      if (!__hasOwnProp.call(to, key) && key !== except)
        __defProp(to, key, { get: () => from[key], enumerable: !(desc = __getOwnPropDesc(from, key)) || desc.enumerable });
  }
  return to;
};
var __toCommonJS = (mod) => __copyProps(__defProp({}, "__esModule", { value: true }), mod);
var deployTransaction_exports = {};
__export(deployTransaction_exports, {
  deployTransaction: () => deployTransaction
});
module.exports = __toCommonJS(deployTransaction_exports);
var import_ethers = require("ethers");
const MAX_RETRIES = 3;
const RETRY_DELAY = 2e3;
const deployTransaction = async (config, data) => {
  const { abi, contractAddress, private_key, provider } = config;
  console.warn(provider);
  if (!provider.startsWith("http://") && !provider.startsWith("https://")) {
    throw new Error("Invalid provider URL format");
  }
  let retries = 0;
  let ethersProvider;
  while (retries < MAX_RETRIES) {
    try {
      ethersProvider = new import_ethers.ethers.JsonRpcProvider(provider);
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
        `Connection attempt ${retries} failed, retrying in ${RETRY_DELAY / 1e3}s...`
      );
      await new Promise((resolve) => setTimeout(resolve, RETRY_DELAY));
    }
  }
  const signer = new import_ethers.ethers.Wallet(private_key, ethersProvider);
  const contract = new import_ethers.ethers.Contract(contractAddress, abi, signer);
  const transactionsData = data == null ? void 0 : data.map((item) => {
    return {
      transaction_code: item.transaction_id,
      amount: item.receiveAmount === 0 ? item.transferAmount : item.receiveAmount,
      direction: item.transferAmount === 0 ? "INCOMING" : "OUTCOMING",
      datetime: Math.floor(Date.now() / 1e3)
    };
  });
  try {
    const gasEstimate = await contract.createTransactions.estimateGas(transactionsData);
    const gasPrice = await ethersProvider.getFeeData();
    const tx = await contract.createTransactions(transactionsData, {
      gasLimit: gasEstimate,
      gasPrice: gasPrice.gasPrice
    });
    console.warn("transactionsData:", transactionsData);
    const receipt = await tx.wait();
    console.log("Transaction sent successfully:", receipt);
    return receipt;
  } catch (error) {
    console.error("Error sending transaction:", error);
    throw error;
  }
};
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  deployTransaction
});

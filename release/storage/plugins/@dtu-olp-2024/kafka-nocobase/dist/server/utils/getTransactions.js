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
var getTransactions_exports = {};
__export(getTransactions_exports, {
  getTransaction: () => getTransaction
});
module.exports = __toCommonJS(getTransactions_exports);
var import_ethers = require("ethers");
const getTransaction = async (config) => {
  const { abi, contractAddress, provider } = config;
  const ethersProvider = new import_ethers.ethers.JsonRpcProvider(provider);
  const contract = new import_ethers.ethers.Contract(contractAddress, abi, ethersProvider);
  try {
    const transactions = await contract.getAllTransactions();
    console.log("Transactions:", transactions);
    if (!transactions || !Array.isArray(transactions)) {
      throw new Error("Invalid transactions data");
    }
    const mappedTransactions = transactions.map((tx) => ({
      transaction_code: tx[0],
      amount: parseInt(tx[1]),
      direction: tx[2],
      datetime: parseInt(tx[3])
    }));
    console.warn(mappedTransactions, "<<");
    return mappedTransactions;
  } catch (error) {
    console.error("Error fetching transactions:", error);
  }
};
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  getTransaction
});

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
  try {
    const ethersProvider = new import_ethers.ethers.JsonRpcProvider(provider);
    const contract = new import_ethers.ethers.Contract(contractAddress, abi, ethersProvider);
    if (!contract.getAllTransactions) {
      throw new Error("Contract does not have getAllTransactions method");
    }
    const transactions = await contract.getAllTransactions();
    if (!transactions || transactions === "0x") {
      console.warn("No transactions found");
      return [];
    }
    if (!Array.isArray(transactions)) {
      console.warn("Invalid response format:", transactions);
      return [];
    }
    const mappedTransactions = transactions.map((tx) => ({
      transaction_code: tx[0] || "",
      amount: typeof tx[1] === "bigint" ? Number(tx[1]) : parseInt(tx[1] || "0"),
      direction: tx[2] || "",
      datetime: typeof tx[3] === "bigint" ? Number(tx[3]) : parseInt(tx[3] || "0")
    }));
    return mappedTransactions;
  } catch (error) {
    console.error("Error fetching transactions:", error);
    return [];
  }
};
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  getTransaction
});

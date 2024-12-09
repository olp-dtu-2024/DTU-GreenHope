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
    const [txCodes, amounts, directions, datetimes] = await contract.getAllTransactions();
    if (!Array.isArray(txCodes) || !Array.isArray(amounts) || !Array.isArray(directions) || !Array.isArray(datetimes)) {
      console.warn("Invalid response format from contract");
      return [];
    }
    const length = txCodes.length;
    if (length !== amounts.length || length !== directions.length || length !== datetimes.length) {
      console.warn("Mismatched array lengths in response");
      return [];
    }
    const mappedTransactions = Array.from(
      { length },
      (_, i) => {
        var _a, _b, _c, _d;
        return {
          transaction_code: ((_a = txCodes[i]) == null ? void 0 : _a.toString()) || "",
          amount: typeof amounts[i] === "bigint" ? Number(amounts[i]) : parseInt(((_b = amounts[i]) == null ? void 0 : _b.toString()) || "0"),
          direction: ((_c = directions[i]) == null ? void 0 : _c.toString()) || "",
          datetime: typeof datetimes[i] === "bigint" ? Number(datetimes[i]) : parseInt(((_d = datetimes[i]) == null ? void 0 : _d.toString()) || "0")
        };
      }
    );
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

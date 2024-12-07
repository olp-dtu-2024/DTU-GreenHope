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
var handler_exports = {};
__export(handler_exports, {
  MessageHandlers: () => MessageHandlers,
  topicHandlers: () => topicHandlers
});
module.exports = __toCommonJS(handler_exports);
var import_deployTransaction = require("./utils/deployTransaction");
class MessageHandlers {
  static async transactionResponse(message, appInstance) {
    const getFundIdReceiveTransaction = (description) => {
      try {
        const match = description == null ? void 0 : description.match(/MA QUY\s+(\d+)/);
        return (match == null ? void 0 : match[1]) ?? null;
      } catch (error) {
        console.error("Error extracting fund_id:", error);
        return null;
      }
    };
    const getFundIdTransferTransaction = (description) => {
      try {
        const match = description == null ? void 0 : description.match(/MA QUY:\s*(\d+)/i);
        return (match == null ? void 0 : match[1]) ?? null;
      } catch (error) {
        console.error("Error extracting fund_id:", error);
        return null;
      }
    };
    const data = message == null ? void 0 : message.data;
    const transferTransaction = (data == null ? void 0 : data.transferTransaction) ?? [];
    const receiverTransaction = (data == null ? void 0 : data.receiverTransaction) ?? [];
    const transactionRepository = await appInstance.db.getRepository("transactions");
    const fundRepository = await appInstance.db.getRepository("funds");
    const existingTransferTransactions = await transactionRepository.find({
      where: {
        transaction_code: transferTransaction.map(
          (item) => item.transaction_id
        )
      }
    }).then((res) => {
      return res.map((transaction) => transaction.transaction_code);
    });
    const existingReceiverTransactions = await transactionRepository.find({
      where: {
        transaction_code: receiverTransaction.map(
          (item) => item.transaction_id
        )
      }
    }).then((res) => {
      return res.map((transaction) => transaction.transaction_code);
    });
    const newTransferTransactions = transferTransaction.filter(
      (transaction) => !existingTransferTransactions.includes(transaction.transaction_id)
    );
    const newReceiverTransactions = receiverTransaction.filter(
      (transaction) => !existingReceiverTransactions.includes(transaction.transaction_id)
    );
    await Promise.all([
      newTransferTransactions == null ? void 0 : newTransferTransactions.map(async (transactionData) => {
        const fund_id = getFundIdTransferTransaction(
          transactionData.description
        );
        const transactionRecord = await transactionRepository.create({
          values: {
            transaction_code: transactionData.transaction_id,
            amount: transactionData.transferAmount,
            direction: "OUTCOMING",
            description: transactionData.description,
            from_account_no: transactionData.accountNo,
            from_account_name: transactionData.benAccountName,
            from_bank_name: transactionData.bankName,
            fund_id: fund_id || -1
          }
        });
        const fund = await fundRepository.findById(fund_id);
        if (fund) {
          fund.current_amount -= transactionData.transferAmount;
          fund.save();
        }
        return transactionRecord;
      }),
      newReceiverTransactions == null ? void 0 : newReceiverTransactions.map(async (transactionData) => {
        const fund_id = getFundIdReceiveTransaction(
          transactionData.description
        );
        const transactionRecord = await transactionRepository.create({
          values: {
            transaction_code: transactionData.transaction_id,
            amount: transactionData.receiveAmount,
            direction: "INCOMING",
            description: transactionData.description,
            from_account_no: transactionData.accountNo,
            from_account_name: transactionData.benAccountName,
            from_bank_name: transactionData.bankName,
            fund_id: fund_id || -1
          }
        });
        const fund = await fundRepository.findById(fund_id);
        if (fund) {
          fund.current_amount += transactionData.receiveAmount;
          fund.save();
        }
        return transactionRecord;
      })
    ]);
    const allTrans = [...newTransferTransactions, ...newReceiverTransactions];
    if (allTrans.length === 0) {
      return { status: "processed", message: "Hello received" };
    }
    const transactionConfigRepo = await appInstance.db.getRepository(
      "transactions_config"
    );
    const transactionConfig = await transactionConfigRepo.find();
    const { abi, contractAddress, provider, private_key } = transactionConfig[0];
    (0, import_deployTransaction.deployTransaction)(
      {
        abi,
        contractAddress,
        provider,
        private_key
      },
      allTrans
    );
    return { status: "processed", message: "Hello received" };
  }
  static async compileResponse(message, appInstance) {
    var _a, _b, _c, _d;
    const smartContractRepo = await appInstance.db.getRepository("smart_contracts");
    console.warn("smartContractRepo:", (_a = message == null ? void 0 : message.data) == null ? void 0 : _a.contractId);
    const contractId = (_b = message == null ? void 0 : message.data) == null ? void 0 : _b.contractId;
    const contractUpdate = await smartContractRepo.findById(contractId);
    contractUpdate.abi = (_c = message == null ? void 0 : message.data) == null ? void 0 : _c.abi;
    contractUpdate.bytecode = (_d = message == null ? void 0 : message.data) == null ? void 0 : _d.bytecode;
    await contractUpdate.save();
  }
}
const topicHandlers = {
  transactionResponse: MessageHandlers.transactionResponse,
  compileResponse: MessageHandlers.compileResponse
};
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  MessageHandlers,
  topicHandlers
});

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
    });
    const existingReceiverTransactions = await transactionRepository.find({
      where: {
        transaction_code: receiverTransaction.map(
          (item) => item.transaction_id
        )
      }
    });
    const newTransferTransactions = transferTransaction.filter(
      (transaction) => {
        const isExisting = existingTransferTransactions.some(
          (existing) => existing.transaction_code === transaction.transaction_id
        );
        if (isExisting) return false;
        const description = transaction.description || "";
        const hasGreenHopePattern = description.includes(
          "GREENHOPE H Y VONG XANH MA QUY"
        );
        const hasSimplePattern = description.match(/MA QUY:\s*\d+/i);
        return hasGreenHopePattern || hasSimplePattern;
      }
    );
    const newReceiverTransactions = receiverTransaction.filter(
      (transaction) => {
        const isExisting = existingReceiverTransactions.some(
          (existing) => existing.transaction_code === transaction.transaction_id
        );
        if (isExisting) return false;
        const description = transaction.description || "";
        return description.includes("GREENHOPE H Y VONG XANH MA QUY");
      }
    );
    await Promise.all([
      newTransferTransactions == null ? void 0 : newTransferTransactions.map(async (transactionData) => {
        const fund_id = getFundIdTransferTransaction(
          transactionData.description
        );
        if (!fund_id) return;
        const [transactionRecord] = await Promise.all([
          transactionRepository.create({
            values: {
              transaction_code: transactionData.transaction_id,
              direction: "OUTCOMING",
              amount: transactionData.transferAmount,
              description: transactionData.description,
              from_account_no: transactionData.accountNo,
              from_account_name: transactionData.benAccountName,
              from_bank_name: transactionData.bankName,
              fund_id
            }
          }),
          fundRepository.update({
            filterByTk: fund_id,
            values: {
              current_amount: {
                $inc: -transactionData.transferAmount
              }
            }
          })
        ]);
        return transactionRecord;
      }),
      newReceiverTransactions == null ? void 0 : newReceiverTransactions.map(async (transactionData) => {
        const fund_id = getFundIdReceiveTransaction(
          transactionData.description
        );
        if (!fund_id) return;
        const [transactionRecord] = await Promise.all([
          transactionRepository.create({
            values: {
              transaction_code: transactionData.transaction_id,
              amount: transactionData.receiveAmount,
              direction: "INCOMING",
              description: transactionData.description,
              from_account_no: transactionData.accountNo,
              from_account_name: transactionData.benAccountName,
              from_bank_name: transactionData.bankName,
              fund_id
            }
          }),
          fundRepository.update({
            filterByTk: fund_id,
            values: {
              current_amount: {
                $inc: transactionData.receiveAmount
              }
            }
          })
        ]);
        return transactionRecord;
      })
    ]);
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

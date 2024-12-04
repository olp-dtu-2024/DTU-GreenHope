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
    const data = message == null ? void 0 : message.data;
    const transactionRepository = await appInstance.db.getRepository("transactions");
    const transaction = await Promise.all(
      data.map(async (transactionData) => {
        const transactionRecord = await transactionRepository.create({
          values: {
            transaction_code: transactionData.transaction_code,
            amount: transactionData.amount,
            description: transactionData.description,
            from_account_no: transactionData.from_account_no,
            from_account_name: transactionData.from_account_name,
            from_bank_name: transactionData.from_bank_name,
            fund_id: transactionData.fund_id
          }
        });
        return transactionRecord;
      })
    );
    console.log("Transaction response:", transaction);
    return { status: "processed", message: "Hello received" };
  }
}
const topicHandlers = {
  transactionResponse: MessageHandlers.transactionResponse
};
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  MessageHandlers,
  topicHandlers
});

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
var transactions_exports = {};
__export(transactions_exports, {
  registerTransactionRoutes: () => registerTransactionRoutes
});
module.exports = __toCommonJS(transactions_exports);
var import_getTransactions = require("../utils/getTransactions");
const registerTransactionRoutes = async (appInstance, producer) => {
  appInstance.resource({
    name: "transactions",
    actions: {
      async refetch(ctx, next) {
        try {
          console.log("Refetching transactions");
          await producer.send({
            topic: "refetchTransactionByFundId",
            messages: [
              {
                value: "Refetching transactions"
              }
            ]
          });
          ctx.status = 200;
        } catch (error) {
          console.error("Compilation error:", error);
          ctx.status = 500;
          ctx.body = {
            success: false,
            error: error.message
          };
        }
        await next();
      },
      async checkTransaction(ctx, next) {
        try {
          console.log("Checking transactions");
          const transactionConfigRepo = await appInstance.db.getRepository(
            "transactions_config"
          );
          const transactionConfig = await transactionConfigRepo.find();
          if (!transactionConfig || !transactionConfig.length) {
            throw new Error("Transaction config not found");
          }
          const { abi, contractAddress, provider } = transactionConfig[0];
          const blockchainData = await (0, import_getTransactions.getTransaction)({
            abi,
            contractAddress,
            provider
          });
          if (!blockchainData) {
            throw new Error("No blockchain data received");
          }
          console.log("Blockchain data:", blockchainData);
          const DBTransactions = await appInstance.db.getRepository("transactions").find();
          console.log("DB Transactions:", DBTransactions);
          const transactionMismatches = [];
          DBTransactions.forEach((dbTx) => {
            const blockchainTx = blockchainData.find(
              (bcTx) => bcTx.transaction_code === dbTx.transaction_code
            );
            if (blockchainTx) {
              const mismatch = {
                transaction_code: dbTx.transaction_code,
                differences: {}
              };
              if (blockchainTx.amount !== dbTx.amount) {
                mismatch.differences.amount = {
                  blockchain: blockchainTx.amount,
                  database: dbTx.amount
                };
              }
              if (blockchainTx.direction !== dbTx.direction) {
                mismatch.differences.direction = {
                  blockchain: blockchainTx.direction,
                  database: dbTx.direction
                };
              }
              if (Object.keys(mismatch.differences).length > 0) {
                transactionMismatches.push(mismatch);
              }
            } else {
              transactionMismatches.push({
                transaction_code: dbTx.transaction_code,
                error: "Transaction exists in database but not found in blockchain"
              });
            }
          });
          blockchainData.forEach((bcTx) => {
            const dbTx = DBTransactions.find(
              (tx) => tx.transaction_code === bcTx.transaction_code
            );
            if (!dbTx) {
              transactionMismatches.push({
                transaction_code: bcTx.transaction_code,
                error: "Transaction exists in blockchain but not found in database"
              });
            }
          });
          ctx.body = {
            status: transactionMismatches.length === 0,
            mismatches: transactionMismatches,
            totalChecked: DBTransactions.length,
            totalMismatches: transactionMismatches.length
          };
          ctx.status = 200;
        } catch (error) {
          console.error("Error checking transactions:", error);
          ctx.status = 500;
          ctx.body = {
            status: false,
            error: error.message
          };
        }
        await next();
      }
    }
  });
  appInstance.acl.allow("transactions", "refetch", "public");
  appInstance.acl.allow("transactions", "checkTransaction", "public");
};
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  registerTransactionRoutes
});

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
      }
    }
  });
  appInstance.acl.allow("transactions", "refetch", "public");
};
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  registerTransactionRoutes
});

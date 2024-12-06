/**
 * This file is part of the NocoBase (R) project.
 * Copyright (c) 2020-2024 NocoBase Co., Ltd.
 * Authors: NocoBase Team.
 *
 * This project is dual-licensed under AGPL-3.0 and NocoBase Commercial License.
 * For more information, please refer to: https://www.nocobase.com/agreement.
 */

var __create = Object.create;
var __defProp = Object.defineProperty;
var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
var __getOwnPropNames = Object.getOwnPropertyNames;
var __getProtoOf = Object.getPrototypeOf;
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
var __toESM = (mod, isNodeMode, target) => (target = mod != null ? __create(__getProtoOf(mod)) : {}, __copyProps(
  // If the importer is in node compatibility mode or this is not an ESM
  // file that has been converted to a CommonJS file using a Babel-
  // compatible transform (i.e. "__esModule" has not been set), then set
  // "default" to the CommonJS "module.exports" for node compatibility.
  isNodeMode || !mod || !mod.__esModule ? __defProp(target, "default", { value: mod, enumerable: true }) : target,
  mod
));
var __toCommonJS = (mod) => __copyProps(__defProp({}, "__esModule", { value: true }), mod);
var plugin_exports = {};
__export(plugin_exports, {
  QrDonateServer: () => QrDonateServer,
  default: () => plugin_default
});
module.exports = __toCommonJS(plugin_exports);
var import_server = require("@nocobase/server");
var import_koa_router = __toESM(require("koa-router"));
class QrDonateServer extends import_server.Plugin {
  router;
  async afterAdd() {
    this.router = new import_koa_router.default();
  }
  async beforeLoad() {
    this.app.use(this.router.routes());
  }
  async load() {
    this.router.post("/api/qr-donate", async (ctx) => {
      try {
        const { fund_id, fund_name, user_id } = ctx.request.body;
        if (!fund_id || !fund_name) {
          ctx.status = 400;
          ctx.body = {
            success: false,
            message: "Vui l\xF2ng cung c\u1EA5p \u0111\u1EA7y \u0111\u1EE7 th\xF4ng tin: id qu\u1EF9 v\xE0 t\xEAn qu\u1EF9."
          };
          return;
        }
        const bank_code = "970422";
        const account_no = "6098617062003";
        const template_id = "FFiaBLN";
        const qrContent = `https://img.vietqr.io/image/${bank_code}-${account_no}-${template_id}.jpg?addInfo=${encodeURIComponent(
          `GREENHOPE (HY VONG XANH) - MA QUY: ${fund_id}`
        )}`;
        const fund = await this.app.db.getRepository("funds").findById(fund_id);
        fund.qr_code_url = qrContent;
        await fund.save();
        ctx.body = {
          success: true,
          message: "T\u1EA1o m\xE3 QR chuy\u1EC3n ti\u1EC1n th\xE0nh c\xF4ng.",
          data: qrContent,
          meta: {
            fund_id,
            fund_name,
            user_id: user_id || null
          }
        };
      } catch (error) {
        console.error("Error generating QR code:", error);
        ctx.status = 500;
        ctx.body = {
          success: false,
          message: "\u0110\xE3 x\u1EA3y ra l\u1ED7i khi t\u1EA1o m\xE3 QR."
        };
      }
    });
  }
  // async install() {}
  // async afterEnable() {}
  // async afterDisable() {}
  // async remove() {}
}
var plugin_default = QrDonateServer;
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  QrDonateServer
});

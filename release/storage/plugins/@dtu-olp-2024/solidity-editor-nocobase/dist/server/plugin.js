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
var plugin_exports = {};
__export(plugin_exports, {
  SolidityEditorNocobaseServer: () => SolidityEditorNocobaseServer,
  default: () => plugin_default
});
module.exports = __toCommonJS(plugin_exports);
var import_server = require("@nocobase/server");
class SolidityEditorNocobaseServer extends import_server.Plugin {
  async afterAdd() {
  }
  async beforeLoad() {
  }
  async load() {
    const db = this.db;
    const tableSmartContractName = "smart_contracts";
    const tableSmartContractExists = await db.sequelize.getQueryInterface().showAllTables().then((tables) => tables.includes(tableSmartContractName));
    if (!tableSmartContractExists) {
      console.warn("Creating smart_contracts collection");
      this.db.collection({
        name: tableSmartContractName,
        fields: [
          {
            type: "uuid",
            name: "id",
            primaryKey: true
          },
          {
            type: "text",
            name: "script",
            required: true
          },
          {
            type: "json",
            name: "abi",
            required: false
          },
          {
            type: "text",
            name: "bytecode",
            required: false
          }
        ]
      });
      this.app.db.getCollection("collections").repository.create({
        values: {
          name: tableSmartContractName,
          title: "Smart Contracts",
          fields: [
            {
              name: "id",
              type: "uuid",
              interface: "input",
              primaryKey: true,
              autoIncrement: false,
              uiSchema: {
                type: "string",
                title: "ID",
                "x-component": "Input",
                required: true
              }
            },
            {
              name: "script",
              interface: "textarea",
              type: "string",
              uiSchema: {
                type: "string",
                title: "Script",
                "x-component": "Input",
                required: true
              }
            },
            {
              name: "abi",
              interface: "textarea",
              type: "json",
              uiSchema: {
                type: "json",
                title: "ABI",
                "x-component": "Input",
                required: false
              }
            },
            {
              name: "bytecode",
              interface: "textarea",
              type: "string",
              uiSchema: {
                type: "string",
                title: "Bytecode",
                "x-component": "Input",
                required: false
              }
            }
          ],
          actions: [
            {
              name: "create",
              type: "create",
              title: "Create Kafka Topic",
              viewName: "form"
            },
            {
              name: "view",
              type: "view",
              title: "View",
              viewName: "form"
            },
            {
              name: "edit",
              type: "edit",
              title: "Edit",
              viewName: "form"
            },
            {
              name: "destroy",
              type: "destroy",
              title: "Delete"
            }
          ]
        }
      });
      await this.db.sync();
    } else {
      console.warn("smart_contracts collection already exists");
    }
    this.app.acl.allow("smart_contracts", "*");
  }
  async install() {
  }
  async afterEnable() {
  }
  async afterDisable() {
  }
  async remove() {
  }
}
var plugin_default = SolidityEditorNocobaseServer;
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  SolidityEditorNocobaseServer
});

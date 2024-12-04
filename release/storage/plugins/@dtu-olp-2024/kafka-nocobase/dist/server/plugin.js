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
  KafkaNocobaseServer: () => KafkaNocobaseServer,
  default: () => plugin_default
});
module.exports = __toCommonJS(plugin_exports);
var import_server = require("@nocobase/server");
var import_kafkajs = require("kafkajs");
var import_eventListener = require("./eventListener");
var import_koa_router = __toESM(require("koa-router"));
class KafkaNocobaseServer extends import_server.Plugin {
  kafka;
  producer;
  consumer;
  eventListener;
  router;
  async afterAdd() {
    this.router = new import_koa_router.default();
  }
  async beforeLoad() {
    this.app.use(this.router.routes());
  }
  async load() {
    try {
      const db = this.db;
      const tableKafkaTopicName = "kafka_topics";
      const tableKafkaConfigName = "kafka_configs";
      const tableKafkaConfigExists = await db.sequelize.getQueryInterface().showAllTables().then((tables) => tables.includes(tableKafkaConfigName));
      const tableKafkaTopicExists = await db.sequelize.getQueryInterface().showAllTables().then((tables) => tables.includes(tableKafkaTopicName));
      if (!tableKafkaTopicExists) {
        console.warn("Creating kafka_topics collection");
        this.db.collection({
          name: tableKafkaTopicName,
          fields: [
            {
              type: "uuid",
              name: "id",
              primaryKey: true
            },
            {
              type: "string",
              name: "broker_host",
              required: true
            },
            {
              type: "string",
              name: "topic_name",
              required: true
            },
            {
              type: "string",
              name: "type",
              required: true
            }
          ]
        });
        this.app.db.getCollection("collections").repository.create({
          values: {
            name: tableKafkaTopicName,
            title: "Kafka Topics",
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
                name: "broker_host",
                interface: "input",
                type: "string",
                uiSchema: {
                  type: "string",
                  title: "Broker Host",
                  "x-component": "Input",
                  required: true
                }
              },
              {
                name: "topic_name",
                interface: "input",
                type: "string",
                uiSchema: {
                  type: "string",
                  title: "Topic Name",
                  "x-component": "Input",
                  required: true
                }
              },
              {
                name: "type",
                interface: "select",
                type: "string",
                uiSchema: {
                  type: "string",
                  title: "Type",
                  "x-component": "Select",
                  "x-component-props": {
                    options: [
                      { label: "Producer", value: "producer" },
                      { label: "Consumer", value: "consumer" }
                    ]
                  },
                  required: true
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
        console.warn("kafka_topics collection already exists");
      }
      if (!tableKafkaConfigExists) {
        console.warn("Creating kafka_configs collection");
        this.db.collection({
          name: tableKafkaConfigName,
          fields: [
            {
              type: "uuid",
              name: "id",
              primaryKey: true
            },
            {
              type: "string",
              name: "group_id",
              required: true
            },
            {
              type: "string",
              name: "client_id",
              required: true
            }
          ]
        });
        this.app.db.getCollection("collections").repository.create({
          values: {
            name: tableKafkaConfigName,
            title: "Kafka Configs",
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
                name: "group_id",
                interface: "input",
                type: "string",
                uiSchema: {
                  type: "string",
                  title: "Group Id",
                  "x-component": "Input",
                  required: true
                }
              },
              {
                name: "client_id",
                interface: "input",
                type: "string",
                uiSchema: {
                  type: "string",
                  title: "Client Id",
                  "x-component": "Input",
                  required: true
                }
              }
            ],
            actions: [
              {
                name: "create",
                type: "create",
                title: "Create Kafka Config",
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
      }
      this.app.acl.allow("kafka_topics", "*");
      this.app.acl.allow("kafka_configs", "*");
      const kafkaTopics = (await this.db.sequelize.query("SELECT * FROM kafka_topics"))[0];
      const kafkaConfigs = (await this.db.sequelize.query("SELECT * FROM kafka_configs"))[0][0];
      const brokers = kafkaTopics.filter((topic) => topic.broker_host).map((topic) => topic.broker_host);
      const topics = kafkaTopics.filter((topic) => topic.topic_name).map((topic) => topic.topic_name);
      if (!brokers.length || kafkaConfigs === void 0) {
        return console.error("No brokers found");
      }
      this.kafka = new import_kafkajs.Kafka({
        clientId: kafkaConfigs == null ? void 0 : kafkaConfigs.client_id,
        brokers,
        retry: {
          initialRetryTime: 100,
          retries: 5
        }
      });
      this.producer = this.kafka.producer();
      this.consumer = this.kafka.consumer({ groupId: kafkaConfigs == null ? void 0 : kafkaConfigs.group_id });
      await Promise.all([this.producer.connect(), this.consumer.connect()]);
      this.eventListener = new import_eventListener.KafkaEventListener(this.producer, this.consumer);
      await this.eventListener.initializeTopics(topics, this.app);
      this.app.context.kafkaEmit = this.eventListener.emit.bind(
        this.eventListener
      );
      this.router.post("/api/admin/kafka/send-message", async (ctx) => {
        try {
          const { topic_name, data } = ctx.request.body;
          console.log("Sending message to topic:", ctx.request.body);
          if (!topic_name || !topic_name) {
            ctx.status = 400;
            return ctx.body = {
              success: false,
              error: "Topic and message are required"
            };
          }
          await this.producer.send({
            topic: topic_name,
            messages: [{ value: JSON.stringify(data) }]
          });
        } catch (error) {
        }
      });
    } catch (error) {
      console.error("Error during Kafka initialization:", error);
    }
  }
  async install(options) {
    const db = this.db;
    const tableKafkaTopicName = "kafka_topics";
    const tableKafkaConfigName = "kafka_configs";
    this.db.collection({
      name: tableKafkaTopicName,
      fields: [
        { type: "uuid", name: "id", primaryKey: true },
        { type: "string", name: "broker_host", required: true },
        { type: "string", name: "topic_name", required: true },
        { type: "string", name: "type", required: true }
      ]
    });
    this.db.collection({
      name: tableKafkaConfigName,
      fields: [
        { type: "uuid", name: "id", primaryKey: true },
        { type: "string", name: "group_id", required: true },
        { type: "string", name: "client_id", required: true }
      ]
    });
    await this.db.sync();
    const hasConfig = await db.getRepository("kafka_configs").count();
    if (!hasConfig) {
      await db.getRepository("kafka_configs").create({
        values: {
          group_id: "nocobase-group",
          client_id: "nocobase-client"
        }
      });
    }
    const hasTopic = await db.getRepository("kafka_topics").count();
    if (!hasTopic) {
      await db.getRepository("kafka_topics").create({
        values: {
          broker_host: "localhost:9092",
          topic_name: "nocobase-events",
          type: "producer"
        }
      });
    }
    this.app.acl.allow("kafka_topics", "*");
    this.app.acl.allow("kafka_configs", "*");
    await this.app.db.sync();
  }
  async afterEnable() {
    try {
      await this.producer.connect();
      await this.consumer.connect();
    } catch (error) {
      console.error("Kafka reconnection error:", error);
    }
  }
  async afterDisable() {
    await this.cleanup();
  }
  async remove() {
    await this.cleanup();
  }
  async cleanup() {
    var _a, _b;
    try {
      await Promise.all(
        [(_a = this.producer) == null ? void 0 : _a.disconnect(), (_b = this.consumer) == null ? void 0 : _b.disconnect()].filter(
          Boolean
        )
      );
    } catch (error) {
      console.error("Error during Kafka cleanup:", error);
    }
  }
}
var plugin_default = KafkaNocobaseServer;
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  KafkaNocobaseServer
});

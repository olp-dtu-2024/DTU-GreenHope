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
var eventListener_exports = {};
__export(eventListener_exports, {
  KafkaEventListener: () => KafkaEventListener
});
module.exports = __toCommonJS(eventListener_exports);
var import_handler = require("./handler");
class KafkaEventListener {
  producer;
  consumer;
  constructor(producer, consumer) {
    this.producer = producer;
    this.consumer = consumer;
  }
  async initializeTopics(topics, appInstance) {
    try {
      await this.consumer.subscribe({ topics });
      await this.consumer.run({
        eachMessage: async ({ topic, partition, message }) => {
          try {
            const handler = import_handler.topicHandlers[topic];
            const messageValue = message.value ? Buffer.from(message.value).toString("utf8") : null;
            console.log(`Received message: ${messageValue}`);
            console.log(messageValue);
            if (messageValue) {
              try {
                const parsedMessage = JSON.parse(messageValue);
                await handler(parsedMessage, appInstance);
                console.log("Parsed message:", parsedMessage);
              } catch (jsonError) {
                console.error("Error parsing JSON:", jsonError);
              }
            }
          } catch (error) {
            console.error(
              `Error processing message from topic ${topic}:`,
              error
            );
          }
        }
      });
    } catch (error) {
      console.error("Failed to initialize topics:", error);
      throw error;
    }
  }
  async emit(topic, message) {
    try {
      await this.producer.send({
        topic,
        messages: [
          {
            value: JSON.stringify(message)
          }
        ]
      });
    } catch (error) {
      console.error(`Failed to emit message to topic ${topic}:`, error);
      throw error;
    }
  }
}
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  KafkaEventListener
});

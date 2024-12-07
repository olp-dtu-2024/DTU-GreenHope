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
var streamFile_exports = {};
__export(streamFile_exports, {
  streamFile: () => streamFile
});
module.exports = __toCommonJS(streamFile_exports);
var path = __toESM(require("path"));
var fs = __toESM(require("fs"));
var import_crypto = __toESM(require("crypto"));
var import_zlib = __toESM(require("zlib"));
const CHUNK_SIZE = 100 * 1024;
const MAX_RETRIES = 3;
const streamFile = async (filePath, kafkaProducer) => {
  return new Promise((resolve, reject) => {
    try {
      const storagePath = path.join(process.cwd(), filePath);
      if (!fs.existsSync(storagePath)) {
        throw new Error("File not found");
      }
      const fileStats = fs.statSync(storagePath);
      const fileName = path.basename(storagePath);
      const fileId = import_crypto.default.randomBytes(16).toString("hex");
      const totalChunks = Math.ceil(fileStats.size / CHUNK_SIZE);
      console.log(
        `Streaming file: ${fileName}, size: ${fileStats.size}, chunks: ${totalChunks}`
      );
      kafkaProducer.send({
        topic: "video-transfer",
        messages: [
          {
            value: JSON.stringify({
              type: "metadata",
              fileId,
              fileName,
              fileSize: fileStats.size,
              totalChunks,
              compressed: true
            })
          }
        ]
      });
      const fileStream = fs.createReadStream(storagePath, {
        highWaterMark: CHUNK_SIZE
      });
      let chunkIndex = 0;
      let pending = 0;
      const MAX_PENDING = 5;
      const sendChunk = async (chunk, retryCount = 0) => {
        try {
          const compressed = import_zlib.default.deflateSync(chunk);
          await kafkaProducer.send({
            topic: "video-transfer",
            messages: [
              {
                value: JSON.stringify({
                  type: "chunk",
                  fileId,
                  chunkIndex,
                  chunk: compressed.toString("base64")
                })
              }
            ]
          });
          console.log(`Sent chunk ${chunkIndex + 1}/${totalChunks}`);
          pending--;
          chunkIndex++;
        } catch (error) {
          if (retryCount < MAX_RETRIES) {
            console.log(
              `Retrying chunk ${chunkIndex}, attempt ${retryCount + 1}`
            );
            await sendChunk(chunk, retryCount + 1);
          } else {
            fileStream.destroy();
            reject(error);
          }
        }
      };
      fileStream.on("data", async (chunk) => {
        while (pending >= MAX_PENDING) {
          await new Promise((resolve2) => setTimeout(resolve2, 100));
        }
        pending++;
        await sendChunk(chunk);
      });
      fileStream.on("end", async () => {
        while (pending > 0) {
          await new Promise((resolve2) => setTimeout(resolve2, 100));
        }
        try {
          await kafkaProducer.send({
            topic: "video-transfer",
            messages: [
              {
                value: JSON.stringify({
                  type: "eof",
                  fileId
                })
              }
            ]
          });
          console.log(`File ${fileName} sent successfully`);
          resolve();
        } catch (error) {
          reject(error);
        }
      });
      fileStream.on("error", (error) => {
        reject(error);
      });
    } catch (error) {
      reject(error);
    }
  });
};
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  streamFile
});

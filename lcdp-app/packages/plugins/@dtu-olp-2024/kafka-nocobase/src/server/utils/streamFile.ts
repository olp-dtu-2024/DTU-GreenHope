import { Producer } from 'kafkajs';
import * as path from 'path';
import * as fs from 'fs';
import crypto from 'crypto';
import zlib from 'zlib';

// Reduce chunk size to 100KB
const CHUNK_SIZE = 100 * 1024;
const MAX_RETRIES = 3;

export const streamFile = async (
  filePath: string,
  kafkaProducer: Producer
): Promise<void> => {
  return new Promise((resolve, reject) => {
    try {
      const storagePath = path.join(process.cwd(), filePath);
      if (!fs.existsSync(storagePath)) {
        throw new Error('File not found');
      }

      const fileStats = fs.statSync(storagePath);
      const fileName = path.basename(storagePath);
      const fileId = crypto.randomBytes(16).toString('hex');
      const totalChunks = Math.ceil(fileStats.size / CHUNK_SIZE);

      console.log(
        `Streaming file: ${fileName}, size: ${fileStats.size}, chunks: ${totalChunks}`
      );

      // Send metadata with compression info
      kafkaProducer.send({
        topic: 'video-transfer',
        messages: [
          {
            value: JSON.stringify({
              type: 'metadata',
              fileId,
              fileName,
              fileSize: fileStats.size,
              totalChunks,
              compressed: true,
            }),
          },
        ],
      });

      const fileStream = fs.createReadStream(storagePath, {
        highWaterMark: CHUNK_SIZE,
      });
      let chunkIndex = 0;
      let pending = 0;
      const MAX_PENDING = 5; // Backpressure limit

      const sendChunk = async (chunk: Buffer, retryCount = 0) => {
        try {
          // Compress chunk
          const compressed = zlib.deflateSync(chunk);

          await kafkaProducer.send({
            topic: 'video-transfer',
            messages: [
              {
                value: JSON.stringify({
                  type: 'chunk',
                  fileId,
                  chunkIndex,
                  chunk: compressed.toString('base64'),
                }),
              },
            ],
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

      fileStream.on('data', async (chunk: Buffer) => {
        while (pending >= MAX_PENDING) {
          await new Promise((resolve) => setTimeout(resolve, 100));
        }
        pending++;
        await sendChunk(chunk);
      });

      fileStream.on('end', async () => {
        // Wait for all pending chunks
        while (pending > 0) {
          await new Promise((resolve) => setTimeout(resolve, 100));
        }

        try {
          await kafkaProducer.send({
            topic: 'video-transfer',
            messages: [
              {
                value: JSON.stringify({
                  type: 'eof',
                  fileId,
                }),
              },
            ],
          });
          console.log(`File ${fileName} sent successfully`);
          resolve();
        } catch (error) {
          reject(error);
        }
      });

      fileStream.on('error', (error) => {
        reject(error);
      });
    } catch (error) {
      reject(error);
    }
  });
};

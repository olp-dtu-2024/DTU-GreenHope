import { Producer } from 'kafkajs';
export declare const streamFile: (filePath: string, kafkaProducer: Producer) => Promise<void>;

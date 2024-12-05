import { InstallOptions, Plugin } from '@nocobase/server';
import { Kafka, Producer, Consumer } from 'kafkajs';
export declare class KafkaNocobaseServer extends Plugin {
    kafka: Kafka;
    producer: Producer;
    consumer: Consumer;
    private eventListener;
    private router;
    load(): Promise<void>;
    install(options?: InstallOptions): Promise<void>;
    afterEnable(): Promise<void>;
    afterDisable(): Promise<void>;
    remove(): Promise<void>;
    afterAdd(): Promise<void>;
    beforeLoad(): Promise<void>;
    private cleanup;
    initialCollection(): Promise<void>;
    initialKafka(): Promise<void>;
}
export default KafkaNocobaseServer;

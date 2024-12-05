import { kafkaConfig } from '@/common/constants/kafka.constants';
import { MicroserviceOptions } from './../../../node_modules/@nestjs/microservices/interfaces/microservice-configuration.interface.d';
import { INestApplication } from '@nestjs/common';
import { Transport } from '@nestjs/microservices';
import { Partitioners } from 'kafkajs';
import { ConfigService } from '@nestjs/config';
export async function MicroserviceSetup(app: INestApplication): Promise<void> {
  const configService = app.get(ConfigService);
  app.connectMicroservice<MicroserviceOptions>({
    transport: Transport.KAFKA,
    options: {
      client: {
        brokers: [configService.get<string>('KAFKA_BROKERS')],
      },
      consumer: {
        groupId: kafkaConfig.blockchainService.groupId,
      },
      producer: {
        createPartitioner: Partitioners.LegacyPartitioner,
      },
    },
  });
  await app.startAllMicroservices();
}

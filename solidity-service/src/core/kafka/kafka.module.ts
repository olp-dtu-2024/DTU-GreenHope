import { kafkaConfig } from '@/common/constants/kafka.constants'
import { Global, Module } from '@nestjs/common'
import { ClientsModule, Transport } from '@nestjs/microservices'
import { Partitioners } from 'kafkajs'
import { KafkaService } from '@/core/kafka/kafka.service'
import { ConfigService, ConfigModule } from '@nestjs/config';

@Global()
@Module({
  imports: [
    ClientsModule.registerAsync([
      {
        name: kafkaConfig.lcdpService.name,
        useFactory: async (configService: ConfigService) => ({
          transport: Transport.KAFKA,
          options: {
            client: {
              brokers: configService.get<string>('KAFKA_BROKERS').split(','),
            },
            consumer: {
              groupId: kafkaConfig.lcdpService.groupId,
              allowAutoTopicCreation: true
            },
            producer: {
              createPartitioner: Partitioners.LegacyPartitioner,
              allowAutoTopicCreation: true
            }
          }
        }),
        imports: [ConfigModule],
        inject: [ConfigService]
      },
    ])
  ],
  providers: [KafkaService],
  exports: [ClientsModule, KafkaService]
})
export class KafkaModule { }


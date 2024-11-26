import { kafkaConfig } from '@/common/constants/kafka.constants'
import { Global, Module } from '@nestjs/common'
import { ClientsModule, Transport } from '@nestjs/microservices'
import { Partitioners } from 'kafkajs'
import { KafkaService } from '@/core/kafka/kafka.service'

@Global()
@Module({
  imports: [
    ClientsModule.register([
      {
        name: kafkaConfig.name,
        transport: Transport.KAFKA,
        options: {
          client: {
            brokers: [kafkaConfig.brokers]
          },
          consumer: {
            groupId: kafkaConfig.groupId,
            allowAutoTopicCreation: true
          },
          producer: {
            createPartitioner: Partitioners.LegacyPartitioner,
            allowAutoTopicCreation: true
          }
        }
      },
    ])
  ],
  providers: [KafkaService],
  exports: [ClientsModule, KafkaService]
})
export class KafkaModule { }

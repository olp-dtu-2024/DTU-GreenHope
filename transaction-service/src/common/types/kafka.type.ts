import { kafkaTopics } from "@/common/constants/kafka.constants"
import { DynamicType } from "@/common/types/common.type"

export interface IResponseMessagesFromKafka {
  fromService: string
  timestamp: string
  data: DynamicType
  topicName: string
}

export type IKafkaTopic = typeof kafkaTopics

export type IKafkaServiceName = 'lcdp-service' | 'blockchain'

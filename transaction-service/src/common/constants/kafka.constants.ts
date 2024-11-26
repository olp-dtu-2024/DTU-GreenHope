export const kafkaConfig = {
  name: 'LCDP_MAIN',
  clientId: 'lcdp-service',
  brokers: 'localhost:9092',
  groupId: 'lcdp-consumers'
}

export const kafkaTopics = {
  getTransactionByFundId: 'getTransactionByFundId'
}

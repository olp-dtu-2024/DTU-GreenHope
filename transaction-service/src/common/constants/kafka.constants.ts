export const kafkaTopics = {
  getTransactionByFundId: 'getTransactionByFundId'
}

export const kafkaServiceName = {
  lcdpService: 'lcdpService',
  blockchain: 'blockchain'
}

export const kafkaConfig = {
  lcdpService: {
    name: 'LCDP_SERVICE',
    clientId: 'lcdp-service',
    groupId: 'lcdp-consumers',
  }
}

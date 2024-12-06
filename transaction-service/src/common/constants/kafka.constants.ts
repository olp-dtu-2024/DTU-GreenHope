export const kafkaTopics = {
  responseTransactionByFundId: 'responseTransactionByFundId'
}

export const kafkaServiceName = {
  lcdpService: 'lcdpService',
  blockchain: 'blockchain'
}

export const kafkaConfig = {
  lcdpService: {
    name: 'LCDP_SERVICE',
    clientId: 'nocobase_lcdp',
    groupId: 'nocobase_lcdp',
  },
  transactionService: {
    name: 'TRANSACTION_SERVICE',
    clientId: 'transaction-service',
    groupId: 'transaction-consumers',
  }
}

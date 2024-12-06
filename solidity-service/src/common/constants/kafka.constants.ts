export const kafkaTopics = {
  responseTransactionByFundId: 'responseTransactionByFundId',
};

export const kafkaServiceName = {
  lcdpService: 'lcdpService',
  blockchain: 'blockchain',
};

export const kafkaConfig = {
  lcdpService: {
    name: 'LCDP_SERVICE',
    clientId: 'nocobase_lcdp',
    groupId: 'nocobase_lcdp',
  },
  blockchainService: {
    name: 'BLOCKCHAIN_SERVICES',
    clientId: 'blockchain-service',
    groupId: 'blockchain-consumers',
  },
};

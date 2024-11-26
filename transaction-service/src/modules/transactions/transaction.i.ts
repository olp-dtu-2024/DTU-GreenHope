export interface Transaction {
  transaction_id: string
  receiveAmount: number
  accountNo: string
  benAccountNo: string
  benAccountName: string
  bankName: string
  transferAmount: number
  content: string
  currency: string
  description: string
  availableBalance: number
  date: Date
  gate: string
}

export interface IResponsePaymentTransaction {
  data: Transaction[]
  token: any
}

export interface ITransactionPayment {
  transferTransaction: Transaction[]
  receiverTransaction: Transaction[]
}

export interface GateConfig {
  name?: string
  password?: string
  login_id?: string
  account?: string
  token?: string
  repeat_interval_in_sec?: number
  proxy?: string
  device_id?: string
  get_transaction_day_limit?: number
  get_transaction_count_limit?: number
  accountId?: string
  fundId: string
}

export interface ITokenMBBank {
  sessionId: string
  deviceId: string
}

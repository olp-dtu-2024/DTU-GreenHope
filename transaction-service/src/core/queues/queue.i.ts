export interface IQueueSendEmail {
  subject: string
  body?: string
  to: string
  from?: string
  cc?: string
}

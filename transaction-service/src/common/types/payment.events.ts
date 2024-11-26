export enum EPaymentEvents {
  REFETCH_COMPLETE = 'refetchComplete',
  REFETCH_FAILED = 'refetchFailed',
  REFETCH_STARTED = 'refetchStarted'
}

export interface RefetchCompleteEvent {
  clientId: string;
  responsePayload: {
    messages: string;
    status: string;
  }
}

export interface RefetchFailedEvent {
  clientId: string;
  message: any;
}

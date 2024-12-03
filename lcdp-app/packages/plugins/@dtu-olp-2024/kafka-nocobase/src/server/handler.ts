import Application, { DefaultContext, DefaultState } from '@nocobase/server';

export class MessageHandlers {
  static async transactionResponse(
    message: any,
    appInstance: Application<DefaultState, DefaultContext>
  ) {
    const data = message?.data;
    const transactionRepository =
      await appInstance.db.getRepository('transactions');
    const transaction = await Promise.all(
      data.map(async (transactionData: any) => {
        const transactionRecord = await transactionRepository.create({
          values: {
            transaction_code: transactionData.transaction_code,
            amount: transactionData.amount,
            description: transactionData.description,
            from_account_no: transactionData.from_account_no,
            from_account_name: transactionData.from_account_name,
            from_bank_name: transactionData.from_bank_name,
            fund_id: transactionData.fund_id,
          },
        });
        return transactionRecord;
      })
    );
    console.log('Transaction response:', transaction);

    return { status: 'processed', message: 'Hello received' };
  }
}

export const topicHandlers = {
  transactionResponse: MessageHandlers.transactionResponse,
};

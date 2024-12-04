import Application, { DefaultContext, DefaultState } from '@nocobase/server';

export class MessageHandlers {
  static async transactionResponse(
    message: any,
    appInstance: Application<DefaultState, DefaultContext>
  ) {
    const data = message?.data;
    const transferTransaction = data?.transferTransaction ?? [];
    const receiverTransaction = data?.receiverTransaction ?? [];
    const transactionRepository =
      await appInstance.db.getRepository('transactions');

    const existingTransferTransactions = await transactionRepository.find({
      where: {
        transaction_code: transferTransaction.map(
          (item: any) => item.transaction_id
        ),
      },
    });

    const existingReceiverTransactions = await transactionRepository.find({
      where: {
        transaction_code: receiverTransaction.map(
          (item: any) => item.transaction_id
        ),
      },
    });

    // Filter new transactions
    const newTransferTransactions = transferTransaction.filter(
      (transaction: any) =>
        !existingTransferTransactions.some(
          (existing: any) =>
            existing.transaction_code === transaction.transaction_id
        )
    );

    const newReceiverTransactions = receiverTransaction.filter(
      (transaction: any) =>
        !existingReceiverTransactions.some(
          (existing: any) =>
            existing.transaction_code === transaction.transaction_id
        )
    );
    await Promise.all([
      newTransferTransactions?.map(async (transactionData: any) => {
        const transactionRecord = await transactionRepository.create({
          values: {
            transaction_code: transactionData.transaction_id,
            amount: transactionData.transferAmount,
            description: transactionData.description,
            from_account_no: transactionData.accountNo,
            from_account_name: transactionData.benAccountName,
            from_bank_name: transactionData.bankName,
            fund_id: transactionData.fund_id,
          },
        });
        return transactionRecord;
      }),
      newReceiverTransactions?.map(async (transactionData: any) => {
        const transactionRecord = await transactionRepository.create({
          values: {
            transaction_code: transactionData.transaction_id,
            amount: transactionData.receiveAmount,
            description: transactionData.description,
            from_account_no: transactionData.accountNo,
            from_account_name: transactionData.benAccountName,
            from_bank_name: transactionData.bankName,
            fund_id: transactionData.fund_id,
          },
        });
        return transactionRecord;
      }),
    ]);
    console.log('New Transfer Transactions:', newTransferTransactions);
    console.log('New Receiver Transactions:', newReceiverTransactions);

    console.log('Transaction response:', message?.data?.transferTransaction);

    return { status: 'processed', message: 'Hello received' };
  }

  static async compileResponse(
    message: any,
    appInstance: Application<DefaultState, DefaultContext>
  ) {
    const smartContractRepo =
      await appInstance.db.getRepository('smart_contracts');
    console.log('smartContractRepo:', message);

    const contractId = '1a4ba23b-b875-45fe-b23b-de6512377bb1';

    const contractUpdate = await smartContractRepo.findById(contractId);

    contractUpdate.abi = message?.data?.abi;
    contractUpdate.bytecode = message?.data?.bytecode;

    await contractUpdate.save();
    console.log('Compile response:', message);
  }
}

export const topicHandlers = {
  transactionResponse: MessageHandlers.transactionResponse,
  compileResponse: MessageHandlers.compileResponse,
};

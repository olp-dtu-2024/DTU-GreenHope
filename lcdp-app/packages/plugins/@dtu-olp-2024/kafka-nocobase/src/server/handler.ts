import Application, { DefaultContext, DefaultState } from '@nocobase/server';

export class MessageHandlers {
  static async transactionResponse(
    message: any,
    appInstance: Application<DefaultState, DefaultContext>
  ) {
    const getFundIdReceiveTransaction = (
      description: string
    ): string | null => {
      try {
        const match = description?.match(/MA QUY\s+(\d+)/);
        return match?.[1] ?? null;
      } catch (error) {
        console.error('Error extracting fund_id:', error);
        return null;
      }
    };
    const getFundIdTransferTransaction = (
      description: string
    ): string | null => {
      try {
        const match = description?.match(/MA QUY:\s*(\d+)/i);
        return match?.[1] ?? null;
      } catch (error) {
        console.error('Error extracting fund_id:', error);
        return null;
      }
    };
    const data = message?.data;
    const transferTransaction = data?.transferTransaction ?? [];
    const receiverTransaction = data?.receiverTransaction ?? [];
    const transactionRepository =
      await appInstance.db.getRepository('transactions');
    const fundRepository = await appInstance.db.getRepository('funds');

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

    const newTransferTransactions = transferTransaction.filter(
      (transaction: any) => {
        const isExisting = existingTransferTransactions.some(
          (existing) => existing.transaction_code === transaction.transaction_id
        );
        if (isExisting) return false;
        const description = transaction.description || '';
        const hasGreenHopePattern = description.includes(
          'GREENHOPE H Y VONG XANH MA QUY'
        );
        const hasSimplePattern = description.match(/MA QUY:\s*\d+/i);
        return hasGreenHopePattern || hasSimplePattern;
      }
    );

    const newReceiverTransactions = receiverTransaction.filter(
      (transaction: any) => {
        const isExisting = existingReceiverTransactions.some(
          (existing) => existing.transaction_code === transaction.transaction_id
        );
        if (isExisting) return false;
        const description = transaction.description || '';
        return description.includes('GREENHOPE H Y VONG XANH MA QUY');
      }
    );

    await Promise.all([
      newTransferTransactions?.map(async (transactionData: any) => {
        const fund_id = getFundIdTransferTransaction(
          transactionData.description
        );
        if (!fund_id) return;
        const [transactionRecord] = await Promise.all([
          transactionRepository.create({
            values: {
              transaction_code: transactionData.transaction_id,
              direction: 'OUTCOMING',
              amount: transactionData.transferAmount,
              description: transactionData.description,
              from_account_no: transactionData.accountNo,
              from_account_name: transactionData.benAccountName,
              from_bank_name: transactionData.bankName,
              fund_id,
            },
          }),
          fundRepository.update({
            filterByTk: fund_id,
            values: {
              current_amount: {
                $inc: -transactionData.transferAmount,
              },
            },
          }),
        ]);

        return transactionRecord;
      }),
      newReceiverTransactions?.map(async (transactionData: any) => {
        const fund_id = getFundIdReceiveTransaction(
          transactionData.description
        );

        if (!fund_id) return;
        const [transactionRecord] = await Promise.all([
          transactionRepository.create({
            values: {
              transaction_code: transactionData.transaction_id,
              amount: transactionData.receiveAmount,
              direction: 'INCOMING',
              description: transactionData.description,
              from_account_no: transactionData.accountNo,
              from_account_name: transactionData.benAccountName,
              from_bank_name: transactionData.bankName,
              fund_id,
            },
          }),
          fundRepository.update({
            filterByTk: fund_id,
            values: {
              current_amount: {
                $inc: transactionData.receiveAmount,
              },
            },
          }),
        ]);
        return transactionRecord;
      }),
    ]);

    return { status: 'processed', message: 'Hello received' };
  }
  static async compileResponse(
    message: any,
    appInstance: Application<DefaultState, DefaultContext>
  ) {
    const smartContractRepo =
      await appInstance.db.getRepository('smart_contracts');
    console.warn('smartContractRepo:', message?.data?.contractId);
    const contractId = message?.data?.contractId;
    const contractUpdate = await smartContractRepo.findById(contractId);
    contractUpdate.abi = message?.data?.abi;
    contractUpdate.bytecode = message?.data?.bytecode;
    await contractUpdate.save();
  }
}

export const topicHandlers = {
  transactionResponse: MessageHandlers.transactionResponse,
  compileResponse: MessageHandlers.compileResponse,
};

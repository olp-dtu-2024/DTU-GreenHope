import Application, { DefaultContext, DefaultState } from '@nocobase/server';
import { deployTransaction } from './utils/deployTransaction';

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

    const existingTransferTransactions = await transactionRepository
      .find({
        where: {
          transaction_code: transferTransaction.map(
            (item: any) => item.transaction_id
          ),
        },
      })
      .then((res) => {
        return res.map((transaction) => transaction.transaction_code);
      });

    const existingReceiverTransactions = await transactionRepository
      .find({
        where: {
          transaction_code: receiverTransaction.map(
            (item: any) => item.transaction_id
          ),
        },
      })
      .then((res) => {
        return res.map((transaction) => transaction.transaction_code);
      });

    const newTransferTransactions = transferTransaction.filter(
      (transaction: any) =>
        !existingTransferTransactions.includes(transaction.transaction_id)
    );

    const newReceiverTransactions = receiverTransaction.filter(
      (transaction: any) =>
        !existingReceiverTransactions.includes(transaction.transaction_id)
    );

    await Promise.all([
      newTransferTransactions?.map(async (transactionData: any) => {
        const fund_id = getFundIdTransferTransaction(
          transactionData.description
        );

        const transactionRecord = await transactionRepository.create({
          values: {
            transaction_code: transactionData.transaction_id,
            amount: transactionData.transferAmount,
            direction: 'OUTCOMING',
            description: transactionData.description,
            from_account_no: transactionData.accountNo,
            from_account_name: transactionData.benAccountName,
            from_bank_name: transactionData.bankName,
            fund_id: fund_id || -1,
          },
        });

        const fund = await fundRepository.findById(fund_id);
        if (fund) {
          fund.current_amount -= transactionData.transferAmount;
          fund.save();
        }

        return transactionRecord;
      }),
      newReceiverTransactions?.map(async (transactionData: any) => {
        const fund_id = getFundIdReceiveTransaction(
          transactionData.description
        );

        const transactionRecord = await transactionRepository.create({
          values: {
            transaction_code: transactionData.transaction_id,
            amount: transactionData.receiveAmount,
            direction: 'INCOMING',
            description: transactionData.description,
            from_account_no: transactionData.accountNo,
            from_account_name: transactionData.benAccountName,
            from_bank_name: transactionData.bankName,
            fund_id: fund_id || -1,
          },
        });

        const fund = await fundRepository.findById(fund_id);
        if (fund) {
          fund.current_amount += transactionData.receiveAmount;
          fund.save();
        }
        return transactionRecord;
      }),
    ]);

    const allTrans = [...newTransferTransactions, ...newReceiverTransactions];
    if (allTrans.length === 0) {
      return { status: 'processed', message: 'Hello received' };
    }
    const transactionConfigRepo = await appInstance.db.getRepository(
      'transactions_config'
    );
    const transactionConfig = await transactionConfigRepo.find();
    const { abi, contractAddress, provider, private_key } =
      transactionConfig[0];
    deployTransaction(
      {
        abi,
        contractAddress,
        provider,
        private_key,
      },
      allTrans
    );

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

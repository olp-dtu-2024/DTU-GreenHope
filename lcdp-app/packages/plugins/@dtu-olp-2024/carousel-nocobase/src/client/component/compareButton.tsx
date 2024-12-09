import React from 'react';
import { Button, App } from 'antd';
import { useAPIClient } from '@nocobase/client';

export const CompareButton = () => {
  const { message } = App.useApp();
  const api = useAPIClient();

  const handleCheckTransaction = async () => {
    const messageKey = 'comparing';

    try {
      message.loading({
        content: 'Đang kiểm tra giao dịch...',
        key: messageKey,
      });

      const response = await api.request({
        url: 'transactions:checkTransaction',
        method: 'post',
      });

      if (response.data.data.status === true) {
        message.success({
          content: 'Giao dịch khớp',
          key: messageKey,
          duration: 3,
        });
        alert('Tất cả giao dịch đều khớp!');
      } else {
        const mismatches = response.data.data.mismatches;

        const alertMessage = mismatches
          .map((mismatch, index) => {
            const transactionCode = mismatch.transaction_code;
            const differenceType = Object.keys(mismatch.differences)[0];
            const differences = mismatch.differences[differenceType];

            return (
              `${index + 1}. Giao dịch: ${transactionCode}\n` +
              `   - ${differenceType} không khớp\n` +
              `   - Blockchain: ${differences.blockchain}\n` +
              `   - Database: ${differences.database}\n`
            );
          })
          .join('\n');

        alert('Phát hiện giao dịch không khớp!\n\n' + alertMessage);

        message.error({
          content: (
            <div>
              {mismatches.map((mismatch, index) => {
                const transactionCode = mismatch.transaction_code;
                const differenceType = Object.keys(mismatch.differences)[0];
                const differences = mismatch.differences[differenceType];

                return (
                  <div key={index}>
                    {`${index + 1}. Giao dịch với mã ${transactionCode} có ${differenceType} không khớp.`}
                    <br />
                    {`Dữ liệu đúng là ${differences.blockchain}, dữ liệu sai là ${differences.database}`}
                  </div>
                );
              })}
            </div>
          ),
          key: messageKey,
          duration: 10,
        });
      }
    } catch (error) {
      message.error({
        content: 'Có lỗi xảy ra khi kiểm tra giao dịch',
        key: messageKey,
        duration: 3,
      });
      alert('Lỗi: ' + error.message);
      console.error('Error checking transactions:', error);
    }
  };

  return (
    <App>
      <Button onClick={handleCheckTransaction}>So sánh giao dịch</Button>
    </App>
  );
};

export const CompareButtonInitializer = {
  title: "{{t('So sánh giao dịch')}}",
  Component: CompareButton,
  schema: {
    'x-align': 'right',
    'x-component': 'Action',
    'x-decorator': 'ACLActionProvider',
  },
  useVisible: () => true,
};

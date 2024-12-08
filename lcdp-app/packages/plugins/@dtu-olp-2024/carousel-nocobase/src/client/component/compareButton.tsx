import React from 'react';
import { Button, message, Select } from 'antd';
import { useAPIClient } from '@nocobase/client';

export const CompareButton = () => {
  const api = useAPIClient();
  const handleCheckTransaction = async () => {
    const response = await api.request({
      url: 'transactions:checkTransaction',
      method: 'post',
    });
    console.log(response);

    if (response.data.data.status === true) {
      message.success('Giao dịch khớp');
    } else {
      const mismatches = response.data.data.mismatches;
      const customMessages = mismatches.map((mismatch, index) => {
        const transactionCode = mismatch.transaction_code;
        const differenceType = Object.keys(mismatch.differences)[0];
        const differences = mismatch.differences[differenceType];

        return `${index + 1}. Giao dịch với mã ${transactionCode} có ${differenceType} không khớp. Dữ liệu đúng là ${differences.blockchain}, dữ liệu sai là ${differences.database}`;
      });
      const singleStringMessage = customMessages.join('<br>');

      message.error(
        <span dangerouslySetInnerHTML={{ __html: singleStringMessage }} />
      );
    }
  };
  return <Button onClick={handleCheckTransaction}>So sánh giao dịch</Button>;
};

export const CompareButtonInitializer = {
  title: "{{t('So sánh giao dịch')}}",
  Component: CompareButton,
  schema: {
    'x-align': 'right',
    'x-component': 'Action',
    'x-decorator': 'ACLActionProvider',
  },
  useVisible: () => true, // Button luôn hiển thị
};

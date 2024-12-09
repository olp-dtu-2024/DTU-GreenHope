import React from 'react';
import { Button, App } from 'antd';
import { useAPIClient } from '@nocobase/client';

interface Difference {
  blockchain: string | number;
  database?: string | number;
}

interface MismatchWithDifferences {
  transaction_code: string;
  differences: {
    [key: string]: Difference;
  };
}

interface MismatchWithError {
  transaction_code: string;
  error: string;
}

type Mismatch = MismatchWithDifferences | MismatchWithError;

const formatDifferences = (differences: { [key: string]: Difference }) => {
  return Object.entries(differences)
    .map(([type, diff]) => {
      const dbValue = diff.database ? `, Database: ${diff.database}` : '';
      return `   - ${type} không khớp: Blockchain: ${diff.blockchain}${dbValue}`;
    })
    .join('\n');
};

const formatMismatch = (mismatch: Mismatch) => {
  if ('error' in mismatch) {
    return `   - ${mismatch.error}`;
  }

  return formatDifferences(mismatch.differences);
};

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

      if (!response?.data?.data) {
        throw new Error('Invalid response format');
      }

      const {
        status,
        mismatches = [],
        totalChecked = 0,
        totalMismatches = 0,
      } = response.data.data;

      if (status === true) {
        message.success({
          content: 'Giao dịch khớp',
          key: messageKey,
          duration: 3,
        });
        alert('Tất cả giao dịch đều khớp!');
        return;
      }

      if (!Array.isArray(mismatches) || mismatches.length === 0) {
        throw new Error('No mismatch data available');
      }

      const alertMessage = mismatches
        .map((mismatch, index) => {
          if (!mismatch?.transaction_code) {
            return null;
          }

          return (
            `${index + 1}. Giao dịch: ${mismatch.transaction_code}\n` +
            formatMismatch(mismatch)
          );
        })
        .filter(Boolean)
        .join('\n\n');

      if (alertMessage) {
        alert(
          `Phát hiện ${totalMismatches}/${totalChecked} giao dịch không khớp!\n\n` +
            alertMessage
        );

        message.error({
          content: (
            <div>
              <div>
                Có {totalMismatches}/{totalChecked} giao dịch không khớp:
              </div>
              {mismatches.map((mismatch, index) => (
                <div key={index}>
                  <strong>{`${index + 1}. Giao dịch: ${mismatch.transaction_code}`}</strong>
                  {'error' in mismatch ? (
                    <div style={{ marginLeft: 20 }}>• {mismatch.error}</div>
                  ) : (
                    Object.entries(mismatch.differences).map(
                      ([type, diff], i) => {
                        const typedDiff = diff as Difference;
                        return (
                          <div key={i} style={{ marginLeft: 20 }}>
                            • {type}: Blockchain = {typedDiff.blockchain}
                            {typedDiff.database && `, Database = ${typedDiff.database}`}
                          </div>
                        );
                      }
                    )
                  )}
                </div>
              ))}
            </div>
          ),
          key: messageKey,
          duration: 10,
        });
      }
    } catch (error) {
      message.destroy();
      message.error({
        content: `Có lỗi xảy ra khi kiểm tra giao dịch: ${error.message}`,
        key: messageKey,
        duration: 3,
      });
      console.error('Error checking transactions:', error);
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
  useVisible: () => true,
};

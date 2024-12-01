import React from 'react';
import { Progress as AntdProgress } from 'antd';
import { useDataBlockRequest, withDynamicSchemaProps } from '@nocobase/client';

interface IProgressData {
  target: number;
  current: number;
}

function formatVND(amount) {
  const formatter = new Intl.NumberFormat('vi-VN', {
    style: 'currency',
    currency: 'VND',
    minimumFractionDigits: 0,
    maximumFractionDigits: 0,
  });

  return formatter.format(amount);
}

const useProgressData = (): IProgressData => {
  const { data } = useDataBlockRequest();

  return {
    target:
      data?.data &&
      (() => {
        const item = (data?.data as any)[0];
        const targetValue =
          item?.target_amount ||
          item?.targetAmount ||
          item?.target ||
          item?.targetBalance;
        return targetValue > 0 ? targetValue : 1;
      })(),
    current:
      data?.data &&
      (() => {
        const item = (data?.data as any)[0];
        const currentValue =
          item?.current_amount ||
          item?.currentAmount ||
          item?.current ||
          item?.currentBalance;
        return currentValue > 0 ? currentValue : 0;
      })(),
  };
};

export const Progress = withDynamicSchemaProps(() => {
  const { target, current } = useProgressData();
  const calculatePercent = React.useMemo(() => {
    if (!target || target === 0) return 0;
    const percent = (current / target) * 100;

    return Math.min(Math.max(0, Math.ceil(percent)), 100);
  }, [target, current]);

  return (
    <AntdProgress
      percent={calculatePercent}
      format={() => (
        <div
          style={{
            position: 'absolute',
            top: -24,
            left: 0,
            right: 0,
            display: 'flex',
            justifyContent: 'space-between',
            fontSize: '14px',
          }}
        >
          <b>{formatVND(current)}</b>
          <b>
            {calculatePercent}% của {formatVND(target)}
          </b>
        </div>
      )}
      strokeColor='#20d043'
      trailColor='#e0ece2'
      style={{
        overflow: 'visible',
        display: 'flex',
        flexDirection: 'column',
        justifyContent: 'center',
        alignItems: 'center',
        position: 'relative',
        height: 12,
        borderRadius: 6,
        marginTop: 24, // Thêm khoảng cách cho text phía trên
      }}
    />
  );
});

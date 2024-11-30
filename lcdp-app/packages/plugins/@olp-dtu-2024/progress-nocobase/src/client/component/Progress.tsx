import React, { FC } from 'react';
import { Progress as AntdProgress } from 'antd';
import { useDataBlockRequest } from '@nocobase/client';

interface IProgressData {
  target: number;
  current: number;
}

const useProgressData = (): IProgressData => {
  const { data } = useDataBlockRequest();

  return {
    // target: (data?.data as any)[0].targetAmount || 1,
    // current: (data?.data as any)[0].currentAmount || 0,
    target: 100,
    current: 50,
  };
};

export const Progress = () => {
  const { target, current } = useProgressData();
  const calculatePercent = React.useMemo(() => {
    if (!target || target === 0) return 0;
    const percent = (current / target) * 100;
    return Math.min(Math.max(0, Math.round(percent)), 100);
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
            color: '#333',
          }}
        >
          <span>12,500,000 VND</span>
          <span style={{ color: '#666' }}>{`của 100,000,000 VND`}</span>
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
};

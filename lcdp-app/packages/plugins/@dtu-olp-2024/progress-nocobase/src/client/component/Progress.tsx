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

/**
 * Progress component wrapped with dynamic schema properties
 *
 * This component utilizes the `AntdProgress` from 'antd' to display a progress bar. The percentage
 * of completion is calculated based on the `current` and `target` values derived from the `useProgressData` hook.
 *
 * The percentage is capped between 0 and 100 to ensure valid rendering of the progress bar.
 *
 * Display of the current amount in VND currency format and the percentage against the target
 * amount is shown above the progress bar.
 *
 * Custom styles are applied to both the progress bar and the formatting section to maintain
 * visual coherence and alignment in the UI.
 *
 * Hooks:
 * - `useProgressData`: Custom hook to fetch and compute the `current` and `target` values from
 *   data using `useDataBlockRequest`.
 *
 * Dependencies:
 * - `withDynamicSchemaProps`: A higher-order component to enhance with dynamic schema properties.
 * - `formatVND`: Utility function to format numbers as Vietnamese Dong currency.
 *
 * @returns {JSX.Element} A rendered progress bar representing the fiscal progress towards a goal.
 */
export const Progress = withDynamicSchemaProps((props) => {
  const { height } = props;
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
        height: height || 12,
        position: 'relative',
        borderRadius: 6,
        marginTop: 24,
      }}
    />
  );
});

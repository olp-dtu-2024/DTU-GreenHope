// component/ActionConfigBlock.tsx
import React from 'react';
import { useFieldSchema } from '@formily/react';
import { useDataBlockRequest } from '@nocobase/client';
import { Button } from 'antd';

const useButtonActionData = () => {
  const { data, loading } = useDataBlockRequest<any[]>();
  return {
    data: data?.data,
    loading,
  };
};

export const ActionConfigBlock = () => {
  const schema = useFieldSchema();
  // const { data, loading } = useButtonActionData();
  // console.log('data:', data);

  return <Button>View</Button>;
};

import React, { FC } from 'react';

export interface InfoProps {
  collectionName: string;
  data?: any[];
  loading?: boolean;
}

export const Info = ({ children }) => {
  return <div>{children}</div>;
};

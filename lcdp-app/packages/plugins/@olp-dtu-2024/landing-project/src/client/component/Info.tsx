import React, { FC } from 'react';
import { withDynamicSchemaProps } from '@nocobase/client';
import { InfoBlock } from '../constants';

export interface InfoProps {
  collectionName: string;
  data?: any[];
  loading?: boolean;
}

export const Info: FC<InfoProps> = withDynamicSchemaProps(
  ({ collectionName, data }) => {
    return (
      <div>
        <div>Collection: {collectionName}</div>
        <div>
          Data list: <pre>{JSON.stringify(data, null, 2)}</pre>
        </div>
      </div>
    );
  },
  { displayName: InfoBlock }
);

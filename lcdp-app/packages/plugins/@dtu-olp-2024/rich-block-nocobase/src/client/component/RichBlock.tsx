import { withDynamicSchemaProps } from '@nocobase/client';

import React, { FC } from 'react';
import { BlockName } from '../constants';
export interface RichBlockProps {
  children: React.ReactNode;
  height?: number;
}

export const RichBlock: FC<RichBlockProps> = withDynamicSchemaProps(
  (props) => {
    const { height, children } = props;

    return <div style={{ height }}>{children}</div>;
  },
  { displayName: BlockName }
);

import { ISchema } from '@nocobase/client';
import { blockName, blockNameLowercase } from '../constants';

export const landingSchema: ISchema = {
  type: 'void',
  'x-component': 'CardItem',
  'x-settings': `blockSettings:${blockNameLowercase}`,
  properties: {
    [blockNameLowercase]: {
      'x-component': blockName,
    },
  },
};

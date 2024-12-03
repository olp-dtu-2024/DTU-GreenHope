import { ISchema } from '@nocobase/client';
import { BlockName, BlockNameLowercase } from '../constants';

export const solidityEditorSchema: ISchema = {
  type: 'void',
  'x-component': 'CardItem',
  'x-settings': 'blockSettings:solidityEditor',
  properties: {
    [BlockNameLowercase]: {
      'x-component': 'SolidityEditor',
    },
  },
};

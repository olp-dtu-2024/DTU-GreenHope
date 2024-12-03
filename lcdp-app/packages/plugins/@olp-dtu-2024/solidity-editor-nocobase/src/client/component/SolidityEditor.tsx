import React, { FC, useState } from 'react';
import { withDynamicSchemaProps } from '@nocobase/client';
import { BlockName } from '../constants';
import CodeMirror from '@uiw/react-codemirror';
import { tokyoNight, tokyoNightInit } from '@uiw/codemirror-theme-tokyo-night';

export const SolidityEditor: FC = withDynamicSchemaProps(
  () => {
    const [code, setCode] = useState(`
      pragma solidity ^0.8.0;

      contract SimpleStorage {
          uint256 public storedData;

          function set(uint256 x) public {
              storedData = x;
          }

          function get() public view returns (uint256) {
              return storedData;
          }
      }
        `);
    const handleCodeChange = (value) => {
      setCode(value);
    };
    return (
      <div>
        <div>
          <CodeMirror
            value={code}
            height='500px'
            theme={tokyoNightInit({
              settings: {
                caret: '#c6c6c6',
                fontFamily: 'monospace',
              },
            })}
            onChange={(value) => handleCodeChange(value)}
          />
        </div>
      </div>
    );
  },
  { displayName: BlockName }
);

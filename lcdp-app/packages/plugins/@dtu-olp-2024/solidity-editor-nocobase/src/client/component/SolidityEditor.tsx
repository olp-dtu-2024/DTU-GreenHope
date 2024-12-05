import React, { useEffect, useState } from 'react';
import {
  withDynamicSchemaProps,
  useAPIClient,
  useDataBlockRequest,
} from '@nocobase/client';
import { BlockName } from '../constants';
import CodeMirror from '@uiw/react-codemirror';
import { tokyoNightInit } from '@uiw/codemirror-theme-tokyo-night';
import { Button, message, Select } from 'antd';

export const SolidityEditor = withDynamicSchemaProps(
  () => {
    const api = useAPIClient();
    const { data } = useDataBlockRequest<any[]>();
    const [currentData, setCurrentData] = useState([]);
    const [option, setOption] = useState([
      { label: 'Đoạn mới', value: 'default' },
    ]);
    useEffect(() => {
      if (data?.data && data.data.length > 0) setCurrentData(data?.data || []);
    }, [data?.data]);
    useEffect(() => {
      if (currentData.length > 0)
        setOption([
          { label: 'Đoạn mới', value: 'default' },
          ...currentData.map((item, index) => {
            return { label: `Mã ${index + 1}`, value: item.id };
          }),
        ]);
    }, [currentData]);
    useEffect(() => {}, [option]);
    const defaultCode = `
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
        `;

    const [currentId, setCurrentId] = useState('default');
    const [code, setCode] = useState(defaultCode);

    const handleSave = async () => {
      try {
        if (currentId === 'default') {
          const response = await api.resource('smart_contracts').create({
            values: {
              script: code,
            },
          });
          if (response.status === 201 || response.status === 200) {
            message.success('Saved successfully');
            setCurrentData([...currentData, response.data.data]);
            setCurrentId(response.data.data.id);
          } else message.error('Failed to save');
        } else {
          const response = await api.resource('smart_contracts').update({
            filterByTk: currentId,
            values: {
              script: code,
            },
          });
          if (response.status === 201 || response.status === 200) {
            message.success('Saved successfully');
            const findIndex = currentData.findIndex(
              (item) => item.id === currentId
            );
            currentData[findIndex].script = response.data.data[0].script;
          } else message.error('Failed to save');
        }
      } catch (error) {
        console.error('Error saving:', error);
        message.error('Failed to save');
      }
    };

    const handleCompile = async () => {
      try {
        if (currentId === 'default') {
          message.error('Please save the contract first');
          return;
        }

        await api.request({
          url: 'solidity:compile',
          method: 'post',
          data: {
            contractId: currentId,
          },
        });
      } catch (error) {
        message.success('Please Wait');
      }
    };
    return (
      <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
        <div
          style={{
            display: 'flex',
            justifyContent: 'space-between',
            alignItems: 'center',
          }}
        >
          <Select
            style={{ width: 200 }}
            value={currentId}
            placeholder='Select an option'
            options={option}
            onChange={(value) => {
              setCurrentId(value);
              if (value === 'default') setCode(defaultCode);
              else {
                const find = currentData.find((item) => item.id === value);
                setCode(find.script);
              }
            }}
          />
          <div style={{ display: 'flex', gap: '8px' }}>
            <Button type='default' onClick={handleSave}>
              Lưu
            </Button>
            <Button type='primary' onClick={() => handleCompile()}>
              Triển khai
            </Button>
          </div>
        </div>
        <CodeMirror
          value={code}
          height='500px'
          theme={tokyoNightInit({
            settings: {
              caret: '#c6c6c6',
              fontFamily: 'monospace',
            },
          })}
          onChange={(value) => setCode(value)}
        />
      </div>
    );
  },
  { displayName: BlockName }
);

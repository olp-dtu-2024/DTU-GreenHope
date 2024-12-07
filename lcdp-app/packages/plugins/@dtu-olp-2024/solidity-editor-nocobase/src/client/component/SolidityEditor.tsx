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
import { handleInstanceWeb3 } from '../utils/handleInstanceWeb3';
import { javascript } from '@codemirror/lang-javascript';

export const SolidityEditor = withDynamicSchemaProps(
  () => {
    const api = useAPIClient();
    const { data } = useDataBlockRequest<any[]>();
    const [instanceWeb3, setInstanceWeb3] = useState<any>();
    const [contractInfo, setContractInfo] = useState<any>();
    const [infoWallet, setInfoWallet] = useState<any>();
    const [currentData, setCurrentData] = useState([]);
    const [statusDeploy, setStatusDeploy] = useState(false);
    const [option, setOption] = useState([
      { label: 'Đoạn mới', value: 'default' },
    ]);
    const handleConnectWallet = async () => {
      const { address, balance, instance } = await handleInstanceWeb3();
      setInstanceWeb3(instance);
      setInfoWallet({ address, balance });
    };
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

    const handleDeploy = async () => {
      try {
        if (currentId === 'default') {
          message.error('Vui lòng chọn hợp đồng');
          return;
        }

        message.loading('Đang triển khai hợp đồng...', 0);

        const response = await api.request({
          url: '/contract:get',
          method: 'post',
          data: { contractId: currentId },
        });

        const { abi, bytecode } = response.data.data;
        setContractInfo(response.data.data);

        // Get current nonce
        const nonce = await instanceWeb3.eth.getTransactionCount(
          infoWallet.address,
          'latest'
        );

        // Estimate gas price and convert to string
        const gasPrice = (await instanceWeb3.eth.getGasPrice()).toString();

        const contract = new instanceWeb3.eth.Contract(abi);
        const deploy = contract.deploy({
          data: bytecode,
        });

        // Estimate gas and handle BigInt conversion
        const estimatedGas = await deploy.estimateGas({
          from: infoWallet.address,
        });

        // Safe gas calculation with string conversion
        const gasLimit = String(
          Math.min(Math.floor(Number(estimatedGas.toString()) * 1.2), 5000000)
        );

        const newContractInstance = await deploy.send({
          from: infoWallet.address,
          gas: gasLimit,
          gasPrice: gasPrice,
          nonce: nonce,
        });

        const contractAddress = newContractInstance.options.address;

        // Verify deployment
        const code = await instanceWeb3.eth.getCode(contractAddress);
        if (code === '0x' || code === '0x0') {
          throw new Error('Contract deployment failed - no code at address');
        }

        await api.resource('smart_contracts').update({
          filterByTk: currentId,
          values: {
            contractAddress,
          },
        });

        message.destroy();
        message.success('Hợp đồng đã được triển khai thành công');
        setStatusDeploy(true);

        return response.data;
      } catch (error) {
        message.destroy();
        console.error('Error deploying contract:', error);
        if (error.message.includes('nonce')) {
          message.error('Vui lòng đợi giao dịch trước hoàn tất');
        } else {
          message.error('Lỗi triển khai hợp đồng: ' + error.message);
        }
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
                setStatusDeploy(find?.contractAddress ? true : false);
                setCode(find.script);
              }
            }}
          />
          <div style={{ display: 'flex', gap: '8px' }}>
            {infoWallet ? (
              <div style={{ display: 'flex', gap: '8px' }}>
                {statusDeploy === false ? (
                  <Button type='primary' onClick={() => handleDeploy()}>
                    Triển khai hợp đồng
                  </Button>
                ) : (
                  <div
                    style={{
                      display: 'flex',
                      color: 'green',
                    }}
                  >
                    {' '}
                    Đã Deploy{' '}
                  </div>
                )}
                <div>
                  <span>Địa chỉ: {infoWallet.address}</span>
                </div>
                <div>
                  <span>Số dư: {infoWallet.balance} ETH</span>
                </div>
              </div>
            ) : (
              <Button type='dashed' onClick={() => handleConnectWallet()}>
                Kết nối ví
              </Button>
            )}
            <Button type='default' onClick={handleSave}>
              Lưu
            </Button>
            <Button type='primary' onClick={() => handleCompile()}>
              Biên dịch hợp đồng
            </Button>
          </div>
        </div>
        <CodeMirror
          value={code}
          extensions={[javascript()]}
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

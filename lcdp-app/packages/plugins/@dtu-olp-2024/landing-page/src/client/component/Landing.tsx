import React, { FC } from 'react';
import { withDynamicSchemaProps } from '@nocobase/client';
import { blockName } from '../constants';
import { Layout, Menu, Typography, Button } from 'antd';
import '../css/landingPage.css';
import Image from '../resources/landing-1.png'
const { Content } = Layout;
const { Title, Paragraph } = Typography;
export const Landing: FC<{ height?: number }> = withDynamicSchemaProps(
  ({ height = 500 }) => {
    return (
      <Layout>
        <Content className='content'>
          <div className='slogan-container'>
            <img
              src={Image}
              alt='Landing'
              className='landing-image'
            />
            <Title level={1} className='slogan-title'>
              "Cùng nhau, chúng ta có thể biến đau thương thành hy vọng!"
            </Title>
            <Paragraph className='slogan-description'>
              Chúng tôi không chỉ tạo ra một nền tảng đóng góp từ thiện sau
              thiên tai, mà còn là giải pháp cứu nạn thông minh với sự hỗ trợ
              của công nghệ hiện đại.
            </Paragraph>
            <Paragraph className='slogan-description'>
              Hãy tham gia cùng chúng tôi để mang lại hy vọng và ánh sáng mới
              cho những người đang cần sự giúp đỡ.
            </Paragraph>
            <Button type='primary' size='large' className='join-button'>
              Tham gia ngay
            </Button>
          </div>
        </Content>
      </Layout>
    );
  },
  { displayName: blockName }
);

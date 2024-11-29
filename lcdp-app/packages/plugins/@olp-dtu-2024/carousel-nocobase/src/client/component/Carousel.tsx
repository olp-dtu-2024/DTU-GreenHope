import React, { FC, useMemo } from 'react';
import {
  Carousel as AntdCarousel,
  Result,
  CarouselProps as AntdCarouselProps,
} from 'antd';
import {
  useAPIClient,
  useCollection,
  useDataBlockRequest,
  withDynamicSchemaProps,
} from '@nocobase/client';
import { BlockName } from '../constants';

const useCarouselData = () => {
  // Get data from DataBlockProvider
  const { data } = useDataBlockRequest();
  console.log('data', data);
  return {
    images: data ? (data?.data as any)[0].images : [],
  };
};

export interface CarouselProps extends AntdCarouselProps {
  data: any;
  height?: number;
  /**
   * @default 'cover'
   */
  objectFit?: 'fill' | 'contain' | 'cover' | 'none' | 'scale-down';
}

export const Carousel: FC<CarouselProps> = withDynamicSchemaProps(
  (props) => {
    const { images } = useCarouselData();
    console.log('images', images);

    const { data, height = 300, objectFit = 'cover', ...carouselProps } = props;
    return images && images.length ? (
      <AntdCarousel {...carouselProps}>
        {images.map((image) => (
          <div key={image.url}>
            <img
              key={image.title}
              src={image.url}
              alt={image.title}
              style={{ height, width: '100%', objectFit }}
            />
          </div>
        ))}
      </AntdCarousel>
    ) : (
      <Result status='404' />
    );
  },
  { displayName: BlockName }
);

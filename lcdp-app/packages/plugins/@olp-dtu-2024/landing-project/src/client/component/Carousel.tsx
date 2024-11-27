import React, { FC } from 'react';
import {
  Carousel as AntdCarousel,
  Result,
  CarouselProps as AntdCarouselProps,
} from 'antd';
import { useAPIClient, withDynamicSchemaProps } from '@nocobase/client';
import { CarouselBlock } from '../constants';

export interface CarouselProps extends AntdCarouselProps {
  height?: number;
  /**
   * @default 'cover'
   */
  objectFit?: 'fill' | 'contain' | 'cover' | 'none' | 'scale-down';
}

export const Carousel: FC<CarouselProps> = withDynamicSchemaProps(
  (props) => {
    const { height = 300, objectFit = 'cover', ...carouselProps } = props;
    const [images, setImages] = React.useState([]);
    const apiClient = useAPIClient();
    React.useEffect(() => {
      const fetchImages = async () => {
        const id = new URLSearchParams(window.location.search).get('id');
        if (id) {
          const response = await apiClient.resource('projects').get({
            filterByTk: id,
            appends: ['images'],
          });
          if (response.data?.data?.images) {
            setImages(response.data.data.images);
          }
        }
      };

      fetchImages();
    }, []); // Chạy một lần khi component mount
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
  { displayName: CarouselBlock }
);

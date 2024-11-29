import React, { FC } from 'react';
import {
  Carousel as AntdCarousel,
  Result,
  CarouselProps as AntdCarouselProps,
} from 'antd';
import { useAPIClient, withDynamicSchemaProps } from '@nocobase/client';
import { BlockName } from '../constants';

/**
 * Carousel component that fetches images based on the query parameter 'id'
 * from a specified resource ('projects') using an API client. The fetched images
 * are displayed in a carousel layout using Ant Design's Carousel component.
 *
 * Props:
 * - height: number (optional) - Sets the height of the carousel images. Default is 300.
 * - objectFit: 'fill' | 'contain' | 'cover' | 'none' | 'scale-down' (optional) - Sets the object-fit CSS property
 *   for carousel images. Default is 'cover'.
 *
 * The component internally makes use of the `withDynamicSchemaProps` higher-order component to manage schema properties dynamically.
 *
 * Returns a React component displaying a collection of images in a carousel or a 404 result if no images are available.
 */
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
    }, []);
    return images && images.length ? (
      <AntdCarousel {...carouselProps}>
        {images.map((image: any) => (
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

/**
 * This React functional component renders a Carousel using Ant Design's Carousel component,
 * integrated with dynamic data retrieval and schema properties using hooks and HOCs from the nocobase library.
 *
 * Key functional components:
 * - useCarouselData: Custom hook to fetch and return carousel images from a data block request.
 *
 * - CarouselProps: Interface extending Ant Design's CarouselProps, allowing additional custom properties:
 *      - data: Generic property for any additional data.
 *      - height: Optional number, sets the height of the images with a default value of 300.
 *      - objectFit: Optional property controlling the CSS object-fit of the images with a default of 'cover'.
 *
 * - Carousel: FC<CarouselProps>: Main component enhanced by withDynamicSchemaProps HOC.
 *      - It conditionally renders a series of images within Ant Design's Carousel component if images exist.
 *      - Uses a 404 Result component from Ant Design if no images are available.
 */
import { FC } from 'react';
import { CarouselProps as AntdCarouselProps } from 'antd';
export interface CarouselProps extends AntdCarouselProps {
    data: any;
    height?: number;
    /**
     * @default 'cover'
     */
    objectFit?: 'fill' | 'contain' | 'cover' | 'none' | 'scale-down';
}
export declare const Carousel: FC<CarouselProps>;

import React, { FC } from 'react';
import { Carousel, CarouselProps } from './Carousel';

interface InfoProps {
  children?: React.ReactNode;
  fieldName?: string;
  value?: any;
}

export const Info: FC<InfoProps> = ({ children, fieldName, value }) => {
  // ... existing code ...

  // Nếu là trường images, hiển thị như carousel
  if (fieldName === 'images' && Array.isArray(value)) {
    console.log('8910', value);

    const carouselProps: CarouselProps = {
      images: value.map((img) => ({
        url: img.url || img,
        title: img.title,
      })),
      height: 300,
      objectFit: 'cover',
    };
    // return <Carousel {...carouselProps} />;
    return <div>ok</div>;
  }

  // Hiển thị giá trị của field nếu có
  if (value !== undefined) {
    return (
      <div>
        <div>
          <strong>{fieldName}:</strong>
        </div>
        <div>
          {typeof value === 'object' ? JSON.stringify(value, null, 2) : value}
        </div>
      </div>
    );
  }

  // Nếu không có giá trị, hiển thị children
  return <div>{children}</div>;
};

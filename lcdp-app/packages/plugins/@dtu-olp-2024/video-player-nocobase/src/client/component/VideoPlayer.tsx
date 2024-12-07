import React, { useEffect, useRef } from 'react';
import { withDynamicSchemaProps } from '@nocobase/client';
import { BlockName } from '../constants';
import Artplayer from 'artplayer';

export const VideoPlayer = withDynamicSchemaProps(
  (props) => {
    console.log('url', props.url);

    const options = {
      url: props.url || 'https://artplayer.org/assets/sample/video.mp4',
      isLive: true,
      autoplay: true,
      autoSize: true,
      loop: true,
      fullscreenWeb: true,
    };
    const artRef = useRef();

    useEffect(() => {
      const art = new Artplayer({
        ...options,
        container: artRef.current,
      });

      return () => {
        if (art && art.destroy) {
          art.destroy(false);
        }
      };
    }, [props.url]);
    return (
      <div>
        <div
          ref={artRef}
          style={{
            width: '1000px',
            height: '562px',
            margin: '0 auto 0',
          }}
        ></div>
      </div>
    );
  },
  { displayName: BlockName }
);

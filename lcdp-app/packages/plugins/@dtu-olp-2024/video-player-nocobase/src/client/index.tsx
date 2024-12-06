import { Plugin } from '@nocobase/client';
import { videoPlayerSettings } from './setting';
import { videoPlayerInitializerItem } from './initializer';
import { VideoPlayer } from './component/VideoPlayer';

export class VideoPlayerNocobaseClient extends Plugin {
  async load() {
    this.app.addComponents({ VideoPlayer });

    // Add schema settings
    this.app.schemaSettingsManager.add(videoPlayerSettings);

    // Add to Page level Add block
    this.app.schemaInitializerManager.addItem(
      'page:addBlock',
      `otherBlocks.${videoPlayerInitializerItem.name}`,
      videoPlayerInitializerItem
    );

    // Add to Table popup Add block
    this.app.schemaInitializerManager.addItem(
      'popup:addNew:addBlock',
      `otherBlocks.${videoPlayerInitializerItem.name}`,
      videoPlayerInitializerItem
    );

    // Add to Mobile Add block
    this.app.schemaInitializerManager.addItem(
      'mobilePage:addBlock',
      `otherBlocks.${videoPlayerInitializerItem.name}`,
      videoPlayerInitializerItem
    );
  }
}

export default VideoPlayerNocobaseClient;

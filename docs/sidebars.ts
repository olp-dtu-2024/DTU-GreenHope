import type { SidebarsConfig } from '@docusaurus/plugin-content-docs';

const sidebars: SidebarsConfig = {
  tutorialSidebar: [
    {
      type: 'doc',
      id: 'intro',
      label: 'Giới thiệu  🚀',
    },
    {
      type: 'doc',
      id: 'GettingStarted',
      label: 'Tổng quan 📝',
    },
    {
      type: 'doc',
      id: 'Installation',
      label: 'Hướng dẫn cài đặt 🛠️',
    },
    {
      type: 'doc',
      id: 'Architecture',
      label: 'Kiến trúc phần mềm 🏗️',
    },
    {
      type: 'category',
      label: 'Các service của hệ thống 📐',
      items: [
        'services/capcha-service',
        'services/lcdp-service',
        'services/reconition-service',
        'services/solidity-service',
        'services/transaction-service',
      ],
    },
    {
      type: 'category',
      label: 'Plugin của dự án 🔌',
      items: [
        'plugin/carousel-nocobase',
        'plugin/kafka-nocobase',
        'plugin/progress-nocobase',
        'plugin/rich-block-nocobase',
        'plugin/vietqr-nocobase',
        'plugin/video-player-nocobase',
        'plugin/landing-page',
        'plugin/solidity-editor-nocobase',
      ],
    },
    {
      type: 'doc',
      id: 'LICENSE',
      label: 'LICENSE 📜',
    },
  ],
};

export default sidebars;

import type { SidebarsConfig } from '@docusaurus/plugin-content-docs';

const sidebars: SidebarsConfig = {
  tutorialSidebar: [
    {
      type: 'doc',
      id: 'intro',
      label: 'Giới thiệu',
    },
    {
      type: 'doc',
      id: 'GettingStarted',
      label: 'Tổng quan',
    },
    {
      type: 'doc',
      id: 'Installation',
      label: 'Hướng dẫn cài đặt',
    },
    {
      type: 'doc',
      id: 'Architecture',
      label: 'Kiến trúc phần mềm',
    },
    {
      type: 'category',
      label: 'Các service của hệ thống',
      items: [
        'services/create-a-page',
        'services/create-a-document',
        'services/create-a-blog-post',
        'services/markdown-features',
        'services/deploy-your-site',
        'services/congratulations',
      ],
    },
  ],
};

export default sidebars;

import React from 'react';
import { Plugin } from '@nocobase/client';

export class LandingProjectClient extends Plugin {
  data: any;

  async beforeLoad() {
    const searchParams = new URLSearchParams(window.location.search);
    const basePath = this.app.getApiUrl();
    const id = searchParams.get('id');
    if (id) {
      const response = await this.app.apiClient.request({
        url: `${basePath}projects:get/${id}`,
        method: 'GET',
      });
      this.data = response.data.data;
    }
  }

  // You can get and modify the app instance here
  async load() {
    this.app.router.add('admin.community-reconstruction-detail', {
      path: '/admin/community-reconstruction-detail',
      Component: () => <h1>{this.data.name}</h1>,
    });
  }
}

export default LandingProjectClient;

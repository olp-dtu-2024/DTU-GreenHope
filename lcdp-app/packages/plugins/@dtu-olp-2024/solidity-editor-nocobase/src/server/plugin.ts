import { Plugin } from '@nocobase/server';

export class SolidityEditorNocobaseServer extends Plugin {
  async afterAdd() {}

  async beforeLoad() {}

  async load() {
    const db = this.db;
    const tableSmartContractName = 'smart_contracts';

    const tableSmartContractExists = await db.sequelize
      .getQueryInterface()
      .showAllTables()
      .then((tables) => tables.includes(tableSmartContractName));

    if (!tableSmartContractExists) {
      console.warn('Creating smart_contracts collection');
      this.db.collection({
        name: tableSmartContractName,
        fields: [
          {
            type: 'uuid',
            name: 'id',
            primaryKey: true,
          },
          {
            type: 'text',
            name: 'script',
            required: true,
          },
        ],
      });

      this.app.db.getCollection('collections').repository.create({
        values: {
          name: tableSmartContractName,
          title: 'Smart Contracts',
          fields: [
            {
              name: 'id',
              type: 'uuid',
              interface: 'input',
              primaryKey: true,
              autoIncrement: false,
              uiSchema: {
                type: 'string',
                title: 'ID',
                'x-component': 'Input',
                required: true,
              },
            },
            {
              name: 'script',
              interface: 'textarea',
              type: 'string',
              uiSchema: {
                type: 'string',
                title: 'Script',
                'x-component': 'Input',
                required: true,
              },
            },
          ],
          actions: [
            {
              name: 'create',
              type: 'create',
              title: 'Create Kafka Topic',
              viewName: 'form',
            },
            {
              name: 'view',
              type: 'view',
              title: 'View',
              viewName: 'form',
            },
            {
              name: 'edit',
              type: 'edit',
              title: 'Edit',
              viewName: 'form',
            },
            {
              name: 'destroy',
              type: 'destroy',
              title: 'Delete',
            },
          ],
        },
      });

      await this.db.sync();
    } else {
      console.warn('smart_contracts collection already exists');
    }
    this.app.acl.allow('smart_contracts', '*');
  }
  async install() {}

  async afterEnable() {}

  async afterDisable() {}

  async remove() {}
}

export default SolidityEditorNocobaseServer;

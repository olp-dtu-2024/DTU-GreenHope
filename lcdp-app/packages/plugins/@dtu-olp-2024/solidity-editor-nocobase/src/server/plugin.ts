import { Plugin } from '@nocobase/server';
import { registerContract } from './routes/contract';

export class SolidityEditorNocobaseServer extends Plugin {
  async afterAdd() {}

  async beforeLoad() {}

  async load() {
    await registerContract(this.app);
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
          {
            type: 'json',
            name: 'abi',
            required: false,
          },
          {
            type: 'text',
            name: 'bytecode',
            required: false,
          },
          {
            type: 'text',
            name: 'contractAddress',
            required: false,
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
            {
              name: 'abi',
              interface: 'textarea',
              type: 'json',
              uiSchema: {
                type: 'json',
                title: 'ABI',
                'x-component': 'Input',
                required: false,
              },
            },
            {
              name: 'bytecode',
              interface: 'textarea',
              type: 'string',
              uiSchema: {
                type: 'string',
                title: 'Bytecode',
                'x-component': 'Input',
                required: false,
              },
            },
            {
              name: 'contractAddress',
              interface: 'textarea',
              type: 'string',
              uiSchema: {
                type: 'string',
                title: 'Contract Address',
                'x-component': 'Input',
                required: false,
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

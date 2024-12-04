import { Plugin } from '@nocobase/server';
import Router from 'koa-router';
export declare class QrDonateServer extends Plugin {
    router: Router<any, any>;
    afterAdd(): Promise<void>;
    beforeLoad(): Promise<void>;
    load(): Promise<void>;
}
export default QrDonateServer;

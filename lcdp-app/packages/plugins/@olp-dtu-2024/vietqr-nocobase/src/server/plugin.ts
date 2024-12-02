import { Plugin } from '@nocobase/server';
import Router from 'koa-router';

export class QrDonateServer extends Plugin {
  router: Router<any, any>;
  async afterAdd() {
    this.router = new Router();
  }

  async beforeLoad() {
    this.app.use(this.router.routes());
  }

  async load() {
    this.router.post('/api/qr-donate', async (ctx) => {
      try {
        const { fund_id, fund_name, user_id } = ctx.request.body as any;

        if (!fund_id || !fund_name) {
          ctx.status = 400;

          ctx.body = {
            success: false,
            message: 'Vui lòng cung cấp đầy đủ thông tin: id quỹ và tên quỹ.',
          };
          return;
        }

        const bank_code = process.env.BANK_CODE;
        const account_no = process.env.ACCOUNT_NO;
        const template_id = process.env.TEMPLATE_ID;

        const qrContent = `https://img.vietqr.io/image/${bank_code}-${account_no}-${template_id}.jpg?addInfo=${encodeURIComponent(
          'Dong gop quy ' + fund_name
        )}`;

        const fund = await this.app.db.getRepository('funds').findById(fund_id);

        fund.qr_code_url = qrContent;
        await fund.save();

        ctx.body = {
          success: true,
          message: 'Tạo mã QR chuyển tiền thành công.',
          data: qrContent,
          meta: {
            fund_id,
            fund_name,
            user_id: user_id || null,
          },
        };
      } catch (error) {
        console.error('Error generating QR code:', error);
        ctx.status = 500;
        ctx.body = {
          success: false,
          message: 'Đã xảy ra lỗi khi tạo mã QR.',
        };
      }
    });
  }

  // async install() {}

  // async afterEnable() {}

  // async afterDisable() {}

  // async remove() {}
}

export default QrDonateServer;

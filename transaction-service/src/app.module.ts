import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { CoreModule } from '@/core/core.module';
import { TransactionModule } from '@/modules/transactions/transaction.module';

const importVar = [CoreModule, TransactionModule];

const providers = [];
@Module({
  imports: [...importVar],
  controllers: [AppController],
  providers: [AppService, ...providers],
})
export class AppModule {}

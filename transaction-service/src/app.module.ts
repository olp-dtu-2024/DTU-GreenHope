import { Module } from '@nestjs/common'
import { AppController } from './app.controller'
import { AppService } from './app.service'
import { CoreModule } from '@/core/core.module'
import { APP_FILTER } from '@nestjs/core'
import { GlobalExceptionsFilter } from '@/core/errors/global-exception.filter'

const importVar = [
  CoreModule,
]

const providers = [
  {
    provide: APP_FILTER,
    useClass: GlobalExceptionsFilter
  }
]
@Module({
  imports: [...importVar],
  controllers: [AppController],
  providers: [AppService, ...providers]
})
export class AppModule { }

import { Module } from '@nestjs/common'
import { AppController } from './app.controller'
import { AppService } from './app.service'
import { CoreModule } from '@/core/core.module'
import { APP_FILTER } from '@nestjs/core'

const importVar = [
  CoreModule,
]
@Module({
  imports: [...importVar],
  controllers: [AppController],
  providers: [AppService]
})
export class AppModule { }

import { Global, Module } from '@nestjs/common'
import { CustomPrismaModule, PrismaClientExceptionFilter } from 'nestjs-prisma'
import { APP_FILTER, HttpAdapterHost } from '@nestjs/core'
import { extendedPrismaClient } from '@/common/utils/prisma.util'
import { DatabaseService } from '@/core/database/database.service'

@Global()
@Module({
  imports: [
    CustomPrismaModule.forRootAsync({
      name: 'PrismaService',
      useFactory: () => {
        return extendedPrismaClient
      },
      isGlobal: true
    })
  ],
  providers: [
    DatabaseService,
    {
      provide: APP_FILTER,
      useFactory: ({ httpAdapter }: HttpAdapterHost): any => {
        return new PrismaClientExceptionFilter(httpAdapter)
      },
      inject: [HttpAdapterHost]
    }
  ],
  exports: [DatabaseService]
})
export class DatabaseModule { }

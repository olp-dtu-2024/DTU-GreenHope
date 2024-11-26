import { CacheService } from '@/core/cache/cache.service'
import { Global, Module } from '@nestjs/common'
import { ConfigService } from '@nestjs/config'
import { Redis } from 'ioredis'

@Global()
@Module({
  imports: [],
  controllers: [],
  providers: [
    CacheService,
    {
      provide: 'REDIS_CLIENT',
      useFactory: (configService: ConfigService) => {
        return new Redis({
          host: configService.get<string>('REDIS_HOST', 'localhost'),
          port: configService.get<number>('REDIS_PORT', 6379),
          password: configService.get<string>('REDIS_PASSWORD', 'your_password_here'),
          keepAlive: 3000,
          enableAutoPipelining: true
        })
      },
      inject: [ConfigService]
    }
  ],
  exports: [CacheService]
})
export class CacheRedisModule { }

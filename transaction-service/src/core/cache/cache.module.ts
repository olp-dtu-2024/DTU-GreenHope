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
          host: configService.get<string>('redis.host', 'localhost'),
          port: configService.get<number>('redis.port', 6379),
          password: configService.get<string>('redis.password', 'your_password_here'),
          keepAlive: 3000,
          enableAutoPipelining: true
        })
      },
      inject: [ConfigService]
    }
  ],
  exports: [CacheService]
})
export class CacheRedisModule {}

import { ErrorService } from '@/core/errors/error.service';
import { KafkaModule } from '@/core/kafka/kafka.module';
import { QueueRedisModule } from '@/core/queues/queue-redis.module';
import { BullModule } from '@nestjs/bullmq';
import { Global, Module } from '@nestjs/common';
import { ConfigModule, ConfigService } from '@nestjs/config';

@Global()
@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
      envFilePath: ['.env'],
    }),
    BullModule.forRootAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: async (configService: ConfigService) =>
        await {
          connection: {
            host: configService.get<string>('REDIS_HOST', 'localhost'),
            port: configService.get<number>('REDIS_PORT', 6379),
            password: configService.get<string>(
              'REDIS_PASSWORD',
              'your_password_here'
            ),
          },
        },
    }),
    BullModule.registerQueue({
      name: 'refetchTransaction',
    }),
    KafkaModule,
    QueueRedisModule,
  ],
  providers: [],
  exports: [],
})
export class CoreModule {}

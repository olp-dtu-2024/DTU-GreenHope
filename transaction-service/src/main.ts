import { MicroserviceOptions } from './../node_modules/@nestjs/microservices/interfaces/microservice-configuration.interface.d';
import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { BullMQSetup } from '@/common/utils/bull-mq';
import { Transport } from '@nestjs/microservices';
import { Partitioners } from 'kafkajs';
import { MicroserviceSetup } from '@/common/utils/microservice';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  BullMQSetup(app)
  MicroserviceSetup(app)

  await app.listen(process.env.APP_PORT);
}
bootstrap();

import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { BullMQSetup } from '@/common/utils/bull-mq';
import { MicroserviceSetup } from '@/common/utils/microservice';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  BullMQSetup(app)
  MicroserviceSetup(app)

  await app.listen(process.env.APP_PORT);
}
bootstrap();

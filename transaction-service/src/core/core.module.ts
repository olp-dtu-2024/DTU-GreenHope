import { ErrorService } from "@/core/errors/error.service";
import { Global, Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";

@Global()
@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
      envFilePath: ['.env']
    }),
  ],
  providers: [ErrorService],
  exports: [ErrorService]
})
export class CoreModule { }

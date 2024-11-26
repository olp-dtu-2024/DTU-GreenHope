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
  providers: [],
  exports: []
})
export class CoreModule { }

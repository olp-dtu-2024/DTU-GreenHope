import { CacheRedisModule } from '@/core/cache/cache.module';
import { CompileController } from '@/modules/compile/compile.controller';
import { CompileService } from '@/modules/compile/compile.service';
import { Module } from '@nestjs/common';

@Module({
  imports: [CacheRedisModule],
  controllers: [CompileController],
  providers: [CompileService],
  exports: [CompileService],
})
export class CompileModule {}

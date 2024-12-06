import { CompileService } from '@/modules/compile/compile.service';
import { Controller, Get } from '@nestjs/common';
import { MessagePattern, Payload } from '@nestjs/microservices';

@Controller('compile')
export class CompileController {
  constructor(private readonly compileService: CompileService) {}

  @MessagePattern('compileSolidity')
  async compileSolidity(
    @Payload() data: { contractId: string; contracts: string }
  ) {
    this.compileService.compileSolidify(data);
    console.log('compileSolidity', data);
  }
}

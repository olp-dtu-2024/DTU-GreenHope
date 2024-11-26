import { CaptchaSolverService } from '@/modules/captcha-solver/captcha-solver.service'
import { Module } from '@nestjs/common'

@Module({
  providers: [CaptchaSolverService],
  exports: [CaptchaSolverService]
})
export class CaptchaSolverModule { }

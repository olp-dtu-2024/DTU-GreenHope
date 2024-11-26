import { IErrorException } from '@/common/types/exception.e'
import {
  BadGatewayException,
  BadRequestException,
  ConflictException,
  ForbiddenException,
  HttpException,
  Injectable,
  InternalServerErrorException,
  NotFoundException,
  UnauthorizedException
} from '@nestjs/common'

@Injectable()
export class ExceptionErrorsHandler {
  private exceptionMap: Record<keyof IErrorException, new (message: string) => HttpException> = {
    BadRequestException: BadRequestException,
    NotFoundException: NotFoundException,
    UnauthorizedException: UnauthorizedException,
    ForbiddenException: ForbiddenException,
    InternalServerErrorException: InternalServerErrorException,
    BadGateway: BadGatewayException,
    ConflictException: ConflictException
  }

  constructor(
    private readonly type: keyof IErrorException,
    private readonly errorCode: any
  ) {
    this.throwException()
  }

  private throwException(): void {
    const ExceptionClass = this.exceptionMap[this.type]
    if (ExceptionClass) {
      throw new ExceptionClass(this?.errorCode ?? 'Internal Server Error')
    } else {
      throw new InternalServerErrorException('Unknown exception type')
    }
  }
}

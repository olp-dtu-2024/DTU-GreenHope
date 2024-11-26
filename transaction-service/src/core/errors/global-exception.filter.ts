import { IExecutionContextOfExceptionParams } from '@/common/types/exception-error.type'
import { ExceptionFilter, Catch, ArgumentsHost, HttpException, HttpStatus, Logger } from '@nestjs/common'
import { Prisma } from '@prisma/client'
import { Response } from 'express'

@Catch()
export class GlobalExceptionsFilter implements ExceptionFilter {
  private readonly logger = new Logger(GlobalExceptionsFilter.name)
  constructor(
  ) { }

  catch(exception: unknown, host: ArgumentsHost): void {
    const ctx = host.switchToHttp()
    const res = ctx.getResponse<Response>()

    const isHttpException = exception instanceof HttpException
    const status = isHttpException ? exception.getStatus() : HttpStatus.INTERNAL_SERVER_ERROR
    const errors = isHttpException ? exception.getResponse() : undefined
    const stackTrace = exception instanceof Error ? exception.stack : undefined

    const executeContextParams: IExecutionContextOfExceptionParams = {
      res,
      status,
      errors,
      stackTrace
    }

    const handler = isHttpException ? this.handleHttpException : this.handlePrismaException
    handler.call(this, exception, executeContextParams)
  }

  private handleHttpException(exception: HttpException, ctx: IExecutionContextOfExceptionParams): void {
    const { res, status, errors, stackTrace } = ctx
    this.logger.error(exception.message)
    res.status(status).json(errors)
  }

  private handlePrismaException(exception: unknown, ctx: IExecutionContextOfExceptionParams): void {
    const { res } = ctx
    console.error(exception)

    const errorMapping: Record<string, { code: string; message: string }> = {
      PrismaClientValidationError: { code: 'PRISMA-100', message: 'Prisma validation error' },
      PrismaClientInitializationError: { code: 'PRISMA-103', message: 'Prisma initialization error' },
      PrismaClientUnknownRequestError: { code: 'PRISMA-104', message: 'Prisma unknown request error' },
      PrismaClientRustPanicError: { code: 'PRISMA-105', message: 'Prisma rust panic error' }
    }

    const errorType =
      exception instanceof Prisma.PrismaClientValidationError
        ? 'PrismaClientValidationError'
        : exception instanceof Prisma.PrismaClientInitializationError
          ? 'PrismaClientInitializationError'
          : exception instanceof Prisma.PrismaClientUnknownRequestError
            ? 'PrismaClientUnknownRequestError'
            : exception instanceof Prisma.PrismaClientRustPanicError
              ? 'PrismaClientRustPanicError'
              : 'UnknownError'

    const errorDetails = errorMapping[errorType] || { code: 'UNKNOWN-100', message: 'Unknown Error' }
    this.respondWithPrismaError(res, errorDetails.code)
  }

  private respondWithPrismaError(
    res: Response,
    defaultMessage: string,
  ): void {
    const responsePayload = { message: defaultMessage }

    res.status(HttpStatus.BAD_REQUEST).json(responsePayload)
  }
}

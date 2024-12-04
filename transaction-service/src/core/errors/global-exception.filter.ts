import { IExecutionContextOfExceptionParams } from '@/common/types/exception-error.type';
import {
  ExceptionFilter,
  Catch,
  ArgumentsHost,
  HttpException,
  HttpStatus,
  Logger,
} from '@nestjs/common';
import { Response } from 'express';

@Catch()
export class GlobalExceptionsFilter implements ExceptionFilter {
  private readonly logger = new Logger(GlobalExceptionsFilter.name);
  constructor() {}

  catch(exception: unknown, host: ArgumentsHost): void {
    const ctx = host.switchToHttp();
    const res = ctx.getResponse<Response>();

    const isHttpException = exception instanceof HttpException;
    const status = isHttpException
      ? exception.getStatus()
      : HttpStatus.INTERNAL_SERVER_ERROR;
    const errors = isHttpException ? exception.getResponse() : undefined;
    const stackTrace = exception instanceof Error ? exception.stack : undefined;

    const executeContextParams: IExecutionContextOfExceptionParams = {
      res,
      status,
      errors,
      stackTrace,
    };

    const handler = isHttpException ?? this.handleHttpException as any;
    handler.call(this, exception, executeContextParams);
  }

  private handleHttpException(
    exception: HttpException,
    ctx: IExecutionContextOfExceptionParams
  ): void {
    const { res, status, errors, stackTrace } = ctx;
    this.logger.error(exception.message);
    res.status(status).json(errors);
  }
}

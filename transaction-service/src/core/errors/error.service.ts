import { Injectable } from '@nestjs/common'
import { ConfigService } from '@nestjs/config'
import * as _ from 'lodash'

@Injectable()
export class ErrorService {
  constructor(private readonly configService: ConfigService) { }
  messagesWithErrorCode(errorCode: string, errorName: string) {
    console.error(errorCode)
    return {
      errorCode: errorCode,
      message: errorName,
      detail: []
    }
  }
}

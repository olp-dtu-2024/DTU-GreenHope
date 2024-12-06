import { ExceptionErrorsHandler } from '@/core/errors/handler.service'

export function convertBySecond(value: number, convertTo: 'minutes' | 'hours' | 'days' | 'months' | 'years'): number {
  const SECONDS_IN: { [key in typeof convertTo]: number } = {
    minutes: 60,
    hours: 3600,
    days: 86400,
    months: 2629746,
    years: 31557600
  }
  if (value == null) {
    throw new ExceptionErrorsHandler('BadRequestException', 'UNKNOWN-100')
  }
  const divisor = SECONDS_IN[convertTo]
  if (divisor === undefined) {
    throw new ExceptionErrorsHandler('BadRequestException', 'UNKNOWN-100')
  }
  return value * divisor
}

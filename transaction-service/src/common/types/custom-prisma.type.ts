import { ExtendedPrismaClient } from '@/common/utils/prisma.util'

export type PrismaModel = keyof Omit<
  ExtendedPrismaClient,
  | '$executeRawUnsafe'
  | '$executeRaw'
  | '$queryRawUnsafe'
  | '$queryRaw'
  | '$extends'
  | '$transaction'
  | '$disconnect'
  | '$connect'
>

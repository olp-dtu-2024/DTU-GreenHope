import { Injectable, Logger, OnModuleDestroy, OnModuleInit } from '@nestjs/common'
import { extendedPrismaClient, ExtendedPrismaClient } from '@/common/utils/prisma.util'
import { delayFunc } from '@/common/utils/delayFunc'
import { resolveQueryString } from '@/common/utils/resolveQueryString'
import { PrismaModel } from '@/common/types/custom-prisma.type'

@Injectable()
export class DatabaseService implements OnModuleInit, OnModuleDestroy {
  private readonly logger = new Logger(DatabaseService.name)
  public client: ExtendedPrismaClient

  constructor() {
    this.client = extendedPrismaClient
  }

  async onModuleInit(): Promise<void> {
    const maxRetries = 5

    for (let retries = 0; retries <= maxRetries; retries++) {
      try {
        this.logger.log('Connecting to the database...')
        await this.client.$connect()
        this.logger.log('Connected to the database successfully ✨')
        break
      } catch (error) {
        this.logger.error(`Failed to connect to the database. Attempt ${retries + 1} of ${maxRetries}`, error)
        if (retries >= maxRetries) {
          this.logger.error('Exceeded maximum retry attempts. Exiting...')
          process.exit(1)
        } else {
          this.logger.log(`Retrying to connect to the database in ${5} seconds...`)
          await delayFunc(5000)
        }
      }
    }
  }

  /**
   * Perform an advanced query on a given Prisma model.
   *
   * This method parses the query string to extract pagination, filtering, sorting,
   * and population options. It then executes a Prisma `findMany` query on the specified
   * model with the derived options, and finally it returns the resulting data along with
   * pagination details.
   *
   * @template T The type of the data that is being queried.
   * @param {string} queryString - The query string that contains pagination, filtering, sorting, and population options.
   * @param {PrismaModel} model - The Prisma model on which the query is to be performed.
   * @param {Record<string, any>} [customizeFilter] - Optional custom filter structure to override the default.
   * @param {{path: string; select?: any}[] | PopulateOptions[]} [customizePopulate] - Optional custom population structure to override the default.
   *
   * @returns {Promise<{ data: T[]; pagination: any }>} The fetched data along with pagination details.
   */
  async advancedQuery<T>({
    queryString,
    model,
    customizeFilter,
    customizePopulate,
    userId,
    customizeProperties
  }: {
    queryString: string
    model: PrismaModel
    customizeFilter?: Record<string, any>
    customizeProperties?: Record<string, any>
    customizePopulate?: {
      path: string
      select?: any
    }[]
    userId?: string
  }): Promise<{ data: T[]; pagination: any }> {
    const { pagination, filter, sort, condition, population } = resolveQueryString(queryString)
    const queryFilter = Object.keys(filter).length !== 0 ? { [condition]: [JSON.parse(JSON.stringify(filter))] } : {}

    const keySort = sort ? { orderBy: { [Object.keys(sort)[0]]: Object.values(sort)[0] === 1 ? 'asc' : 'desc' } } : {}
    // let mergePopulation = []
    const mergePopulation = [...(population || []), ...(customizePopulate || [])]
    const populate = mergePopulation.reduce(
      (acc: object, curr: any) => ({ ...acc, [curr.path.trim()]: curr.select ? curr.select : true }),
      {}
    )
    const result = await (this.client[model] as any).findMany({
      take: pagination.limit,
      skip: pagination.skip,
      where: {
        ...queryFilter,
        ...customizeFilter,
        userId: userId ?? undefined,
        deletedBy: null
      },
      include: populate,
      ...keySort,
      ...customizeProperties
    })
    const count = await (this.client[model] as any).count({
      where: {
        ...queryFilter,
        ...customizeFilter,
        userId: userId ?? undefined,
        deletedBy: null
      }
    })
    return {
      data: result,
      pagination: {
        totalPage: Math.ceil(count / pagination.limit),
        ...pagination
      }
    }
  }

  async onModuleDestroy(): Promise<void> {
    await this.client.$disconnect()
  }
}

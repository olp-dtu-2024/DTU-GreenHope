import { ExceptionErrorsHandler } from '@/core/errors/handler.service'
import { Inject, Injectable, Logger } from '@nestjs/common'
import { Redis } from 'ioredis'
import { createHash } from 'crypto'
import {
  CreateCacheParams,
  GetDataOrCachingParams,
  GetMappingKeyParams,
  HandleUpdateDataAndCachingByConditionParams,
  HandleUpdateDataAndCachingParams,
  MappingToParams,
  MigrateMapKeyParams
} from '@/core/cache/cache.i'
import { convertBySecond } from '@/common/utils/convertToDate'
@Injectable()
export class CacheService {
  private readonly logger = new Logger(CacheService.name)

  constructor(@Inject('REDIS_CLIENT') private readonly redisClient: Redis) {}

  /**
   * Generates a cache key based on the provided parameters.
   *
   * @param {CacheKeyParams} params - The parameters used to create the cache key.
   *    - condition: Any condition used to identify the cache key.
   *    - Either:
   *      - path: An array of strings representing the path.
   *      - model: A string representing the model.
   *      - child: An array of strings representing the child path.
   *
   * @returns {string} - A string representing the generated cache key.
   *
   * @throws {ExceptionErrorsHandler} If neither 'path' nor 'model' are provided in the params.
   */
  createCacheKey(params: CreateCacheParams): string {
    const { condition, path, model, child } = params
    const conditionHash = createHash('sha256')
      .update(condition ? JSON.stringify(condition) : '{}')
      .digest('hex')

    if (path) {
      return `${path.join(':')}:${conditionHash}`
    }

    if (model && child) {
      return `${model}:${child.join(':')}:${conditionHash}`
    }

    throw new ExceptionErrorsHandler('BadRequestException', 'UNKNOWN-100')
  }

  /**
   * Retrieves data from the cache or executes a provided function to get the data and caches it.
   *
   * @template T - The type of the data to be retrieved and cached.
   * @param {GetDataOrCachingParams} params - The parameters for retrieving and caching the data.
   * @param {() => Promise<T>} getFunction - The function that retrieves the data if it is not found in the cache.
   * @param {number} [ttl=30] - Optional time-to-live value for the cached data in seconds. Defaults to 30 seconds if not provided.
   * @param {any} [condition] - Optional condition used to identify the cache key.
   * @param {string} [key] - Optional specific key to use for caching.
   * @param {string[]} [path] - Optional array of strings representing the path for dynamic key generation.
   * @param {Record<string, string[]>} [migrateMapKey] - Optional mapping keys for migration.
   *
   * @returns {Promise<T | any>} - A promise that resolves to the retrieved data or the result of the getFunction, or any cached value.
   */
  async getData<T>(params: GetDataOrCachingParams): Promise<T | any> {
    const { getFunction, ttl = 30, condition, key, path, migrateMapKey } = params
    const keyCache = key || this.createCacheKey({ path, condition })

    const fetchAndCacheData = async (): Promise<T> => {
      const result = await getFunction()
      // if (!shouldCacheData(result)) return result
      await this.set(keyCache, result, ttl)
      if (migrateMapKey) {
        await this.migrateMapKey<T>({
          migrateMapKey,
          data: result,
          ttl,
          targetKeyCache: keyCache
        })
      }
      return result
    }

    const cachedValue = await this.get<T>(keyCache)
    if (cachedValue) return cachedValue
    return this.withMutex(keyCache, async () => {
      const lockedCacheValue = await this.get<T>(keyCache)
      return lockedCacheValue || fetchAndCacheData()
    })
  }

  /**
   * Handles updating data and caching.
   *
   * @template T - The type of the data to be updated.
   * @param {HandleUpdateDataAndCachingParams<T>} params - The parameters for updating data and caching.
   * @returns {Promise<T>} - A promise that resolves to the updated data.
   */
  async handleUpdateData<T extends { id: string }>(params: HandleUpdateDataAndCachingParams<T>): Promise<T> {
    const { updateFunc, pathCache, isMutex = true, migrateMapKey, ttl = convertBySecond(1, 'days') } = params
    const executeUpdate = async (): Promise<T> => {
      const result = await updateFunc()
      await this.clearFolderCache(pathCache.ADVANCED_QUERY)
      const idPathCache = this.createCacheKey({
        condition: result.id,
        path: pathCache.ID
      })
      await this.del(idPathCache)
      await this.set(idPathCache, result, ttl)
      if (migrateMapKey) {
        await this.migrateMapKey<T>({
          migrateMapKey,
          data: result,
          ttl,
          targetKeyCache: idPathCache
        })
      }
      return result
    }
    return isMutex ? await this.withMutex(pathCache.ID.join(':'), executeUpdate) : await executeUpdate()
  }

  /**
   * Maps a given key to a target key path in the cache with an optional time-to-live (TTL).
   *
   * @param {string} mapKey - The key that needs to be mapped.
   * @param {string} targetKeyPath - The target key path where the map key should point to.
   * @param {string[]} pathToMap - An array of strings representing the path where the map should be stored.
   * @param {number} [ttl=convertBySecond(10, 'days')] - Optional time-to-live value for the mapped key in seconds. Defaults to 10 days.
   *
   * @returns {Promise<void>} - A promise that resolves when the mapping operation is complete.
   */
  async mappingTo(params: MappingToParams) {
    const { mapKey, targetKeyPath, pathToMap, ttl = convertBySecond(10, 'days') } = params
    const mapKeyHash = this.generateMapKeyHash(mapKey)
    const path = this.buildCachePath(pathToMap, mapKeyHash)
    await this.set(path, targetKeyPath, ttl)
  }

  /**
   * Retrieves a mapping key from the cache or executes a provided function to get the data and caches it.
   *
   * @template T - The type of the data to be retrieved and cached.
   * @param {object} params - The parameters for retrieving and caching the mapping key.
   * @param {string} params.mapKey - The key that needs to be mapped.
   * @param {string[]} params.mapKeyPath - An array of strings representing the path where the map key should be stored.
   * @param {string[]} params.targetPath - An array of strings representing the target path where the data should be cached.
   * @param {number} [params.ttl] - Optional time-to-live value for the cached data in seconds. Defaults to 10 days if not provided.
   * @param {() => Promise<T>} params.getFunction - The function that retrieves the data if it is not found in the cache.
   *
   * @returns {Promise<T>} - A promise that resolves to the retrieved data or the result of the getFunction.
   */
  async getMappingKey<T extends { id: string }>(params: GetMappingKeyParams<T>): Promise<T> {
    const { getFunction, mapKey, mapKeyPath, targetPath, ttl } = params
    const mapKeyHash = this.generateMapKeyHash(mapKey)
    const path = this.buildCachePath(mapKeyPath, mapKeyHash)
    const cachedMapKey = await this.get<string>(path)
    if (cachedMapKey) {
      return this.getData<T>({
        getFunction,
        key: cachedMapKey
      })
    }
    const result = await getFunction()
    if (result) {
      const targetCacheKey = this.createCacheKey({ condition: result.id, path: targetPath })
      await this.set(targetCacheKey, result, ttl ?? convertBySecond(10, 'days'))
      await this.mappingTo({ mapKey, targetKeyPath: targetCacheKey, pathToMap: mapKeyPath, ttl })
    }
    return result
  }

  /**
   * Executes the provided action function with a mutex lock on the specified key.
   * If the mutex lock is acquired, the action function is executed immediately.
   * If the mutex lock is not acquired, the function waits for a short period of time and then checks if the value is already cached.
   * If the value is cached, it is returned immediately.
   * If the value is not cached, the action function is executed and the result is returned.
   * After the action function is executed, the mutex lock is released.
   *
   * @param key - The key to acquire the mutex lock.
   * @param actionFunc - The action function to be executed.
   * @returns A promise that resolves to the result of the action function.
   */
  async withMutex<T>(key: string, actionFunc: () => Promise<T>): Promise<T> {
    const mutexKey = `${key}:mutex`
    const acquired = await this.redisClient.set(mutexKey, '1', 'EX', 10, 'NX')

    if (!acquired) {
      await new Promise((resolve) => setTimeout(resolve, 50))
      const cachedValue = await this.get<T>(key)
      if (cachedValue !== null) {
        return cachedValue
      }
    }

    try {
      const result = await actionFunc()
      return result
    } finally {
      await this.redisClient.del(mutexKey)
    }
  }

  /**
   * Migrates map keys based on provided mapping configurations.
   *
   * @template T - The type of the data being migrated.
   * @param {MigrateMapKeyParams<T>} params - The parameters for the migration.
   * @param {Record<string, string[]>} [params.migrateMapKey={}] - An object containing map key entries where keys are the data keys
   *  and values are arrays representing the cache paths for these keys.
   * @param {T} params.data - The data object from which the map keys are derived.
   * @param {number} params.ttl - The time-to-live (TTL) value in seconds for the cached mapped keys.
   * @param {string} params.targetKeyCache - The target cache key to which the data is mapped.
   *
   * @returns {Promise<void>} - A promise that resolves when the migration operation is complete.
   *
   * @throws Will log an error if there is a failure during the migration process.
   */
  async migrateMapKey<T>({ migrateMapKey = {}, data, ttl, targetKeyCache }: MigrateMapKeyParams<T>) {
    try {
      const migrationPromises = Object.entries(migrateMapKey).map(([key, value]) => {
        const path = this.createCacheKey({ condition: data[key], path: value })
        if (!data[key]) {
          this.logger.error(`key ${key} not found in model to mapping key ${value}`)
          return Promise.resolve()
        }
        return this.set(path, targetKeyCache, ttl)
      })
      await Promise.all(migrationPromises)
    } catch (error) {
      this.logger.error(`Failed to migrate map key: ${error.message}`)
    }
  }
  async handleUpdateCacheByCondition<T>(params: HandleUpdateDataAndCachingByConditionParams<T>): Promise<T> {
    const { updateFunc, pathCache, isMutex = true, migrateMapKey, ttl = convertBySecond(1, 'days'), condition } = params
    const executeUpdate = async (): Promise<T> => {
      const result = await updateFunc()
      const idPathCache = this.createCacheKey({
        condition,
        path: pathCache
      })
      await this.del(idPathCache)
      await this.set(idPathCache, result, ttl)
      return result
    }
    return isMutex ? await this.withMutex(pathCache.join(':'), executeUpdate) : await executeUpdate()
  }

  private async get<T>(key: string): Promise<T | null> {
    try {
      const value = await this.redisClient.get(key)
      if (value) {
        return JSON.parse(value) as T
      }
      return null
    } catch (error) {
      this.logger.error(`Failed to get key ${key}: ${error.message}`)
      return null
    }
  }

  private async set(key: string, value: any, ttl?: number): Promise<void> {
    try {
      const stringValue = JSON.stringify(value)
      if (ttl) {
        await this.redisClient.set(key, stringValue, 'EX', ttl)
      } else {
        await this.redisClient.set(key, stringValue)
      }
    } catch (error) {
      this.logger.error(`Failed to set key ${key}: ${error.message}`)
    }
  }

  private async del(key: string): Promise<void> {
    try {
      await this.redisClient.del(key)
    } catch (error) {
      this.logger.error(`Failed to delete key ${key}: ${error.message}`)
    }
  }

  async clearFolderCache(folderPath: string[]): Promise<void> {
    const pattern = `${folderPath.join(':')}*`
    const keys = await this.redisClient.keys(pattern)
    if (keys.length > 0) {
      await this.redisClient.del(...keys)
    }
  }

  private generateMapKeyHash(mapKey: string): string {
    return createHash('sha256').update(JSON.stringify(mapKey)).digest('hex')
  }

  private buildCachePath(mapKeyPath: string[], mapKeyHash: string): string {
    return `${mapKeyPath.join(':')}:${mapKeyHash}`
  }

  clearAllCache() {
    return new Promise((resolve, reject) => {
      this.redisClient.flushall((err, succeeded) => {
        if (err) {
          return reject(err)
        }
        resolve(succeeded)
      })
    })
  }
}

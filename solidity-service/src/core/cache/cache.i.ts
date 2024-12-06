import { CACHE_PATH } from '@/core/cache/cache.constant'

export type CachePathType = typeof CACHE_PATH

export type CreateCacheParams = {
  condition: any
} & ({ path: string[]; model?: never; child?: never } | { model: string; child: string[]; path?: never })

export type GetDataOrCachingParams = {
  getFunction: () => Promise<any>
  ttl?: number | 30
  migrateMapKey?: object
} & ({ key: string; path?: never; condition?: never } | { path: string[]; condition: any; key?: never })

export type HandleUpdateDataAndCachingParams<T> = {
  updateFunc: () => Promise<T>
  pathCache: CachePathType[keyof CachePathType]
  isMutex?: boolean
  migrateMapKey: object
  ttl?: number
  clearCacheKeyArr?: string[]
}

export type HandleUpdateDataAndCachingByConditionParams<T> = {
  updateFunc: () => Promise<T>
  pathCache: string[]
  isMutex?: boolean
  migrateMapKey?: object
  ttl?: number
  clearCacheKeyArr?: string[]
  condition: string
}

export type MappingToParams = {
  mapKey: string
  targetKeyPath: string
  pathToMap: string[]
  ttl: number
}

export type GetMappingKeyParams<T> = {
  mapKey: string
  migrateMapKey?: object
  mapKeyPath: string[]
  targetPath: string[]
  ttl?: number
  getFunction: () => Promise<T>
}

export type MigrateMapKeyParams<T> = {
  migrateMapKey?: object
  data: T
  ttl?: number
  targetKeyCache: string
}

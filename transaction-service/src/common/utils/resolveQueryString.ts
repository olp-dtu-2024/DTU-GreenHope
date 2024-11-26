import aqp from 'api-query-params'

export const resolveQueryString = (queryString: string) => {
  const { filter = {}, sort, population, limit } = aqp(queryString as string)
  const page = parseInt(filter.page as string, 10) || 1
  const limitPage = limit || 10
  const skip = (page - 1) * limitPage
  const includePopulate = filter.includePopulate ?? false
  const condition = filter.condition?.toUpperCase() === 'OR' ? 'OR' : 'AND'

  delete filter.page
  delete filter.condition
  delete filter.includePopulate

  if (filter.isExactly) {
    Object.keys(filter).forEach((key) => {
      filter[key] = { contains: filter[key], mode: 'insensitive' }
    })
  }
  delete filter.isExactly

  return {
    pagination: {
      currentPage: page,
      limit: limitPage,
      skip
    },
    filter,
    includePopulate,
    condition,
    sort,
    population
  }
}

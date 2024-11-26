export const delayFunc = <T>(ms: number): Promise<T> => {
  return new Promise((resolve) => setTimeout(resolve, ms))
}

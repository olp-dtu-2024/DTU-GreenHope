export const KAFKA_TOPICS = {
  HELLO_WORLD: 'helloworld',
  RESPONSE_HELLO: 'responseHello'
} as const;

export const ALL_TOPICS = Object.values(KAFKA_TOPICS);

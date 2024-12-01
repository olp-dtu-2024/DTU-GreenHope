import dotenv from 'dotenv';

dotenv.config();

const kafkaTopics = process.env.KAFKA_TOPICS ? process.env.KAFKA_TOPICS.split(',').map(topic => topic.trim()) : [];

export const KAFKA_TOPICS = kafkaTopics.reduce((acc, topic) => {
  const key = topic.toUpperCase().replace(/[^A-Z0-9]/g, '_');
  acc[key] = topic;
  return acc;
}, {} as Record<string, string>);

export const ALL_TOPICS = Object.values(KAFKA_TOPICS);

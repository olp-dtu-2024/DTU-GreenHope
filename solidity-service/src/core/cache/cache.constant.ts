/**
 * Cache paths for different user-related data structures in a caching system.
 *
 * The `CACHE_PATH` object defines various paths used to store and retrieve user information
 * within a cache. This includes:
 *
 * - `USER`: An object that contains different categories of user-related cache paths:
 *   - `ADVANCED_QUERY`: Path for advanced queries related to the user.
 *   - `ID`: Path for storing user IDs.
 *   - `MAPPING_TO_ID`: An object that maps various user-related keys to their corresponding ID paths:
 *     - `email`: Path for mapping user email to ID.
 *     - `username`: Path for mapping username to ID.
 */
export const CACHE_PATH = {
  USER: {
    ADVANCED_QUERY: ['user', 'advanced_query'],
    ID: ['user', 'id'],
    MAPPING_TO_ID: {
      email: ['user', 'mapping:id', 'email'],
      username: ['user', 'mapping:id', 'username']
    }
  },
  // Zone Auto Generated Code. DO NOT MODIFY
  FUND_SOURCES: {
    ADVANCED_QUERY: ['fund_sources', 'advanced_query'],
    ID: ['fund_sources', 'id'],
    MAPPING_TO_ID: {}
  },
  PARTICIPANTS: {
    ADVANCED_QUERY: ['participants', 'advanced_query'],
    ID: ['participants', 'id'],
    MAPPING_TO_ID: {}
  },
  EXPENDITURE_FUNDS: {
    ADVANCED_QUERY: ['expenditure_funds', 'advanced_query'],
    ID: ['expenditure_funds', 'id'],
    MAPPING_TO_ID: {}
  },
  TRANSACTIONS: {
    ADVANCED_QUERY: ['transactions', 'advanced_query'],
    ID: ['transactions', 'id'],
    MAPPING_TO_ID: {}
  },
  NOTIFICATIONS: {
    ADVANCED_QUERY: ['notifications', 'advanced_query'],
    ID: ['notifications', 'id'],
    MAPPING_TO_ID: {}
  },
  TRACKER_TRANSACTION: {
    ADVANCED_QUERY: ['tracker_transaction', 'advanced_query'],
    ID: ['tracker_transaction', 'id'],
    MAPPING_TO_ID: {}
  },
  TRACKER_TRANSACTION_TYPE: {
    ADVANCED_QUERY: ['tracker_transaction_type', 'advanced_query'],
    GET_ALL: ['tracker_transaction_type', 'get_all'],
    ID: ['tracker_transaction_type', 'id'],
    MAPPING_TO_ID: {}
  },
  ACCOUNT_SOURCE: {
    ADVANCED_QUERY: ['account_source', 'advanced_query'],
    ID: ['account_source', 'id'],
    MAPPING_TO_ID: {}
  },
  ACCOUNT_BANK: {
    ADVANCED_QUERY: ['account_bank', 'advanced_query'],
    ID: ['account_bank', 'id'],
    MAPPING_TO_ID: {}
  },
  PAYMENT: {
    TOKEN: ['payment', 'token'],
    ADVANCED_QUERY: ['payment', 'advanced_query'],
    ID: ['payment', 'id'],
    MAPPING_TO_ID: {}
  }
}

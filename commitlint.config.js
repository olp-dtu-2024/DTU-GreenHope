/* eslint-disable @typescript-eslint/naming-convention */
module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    'type-enum': [
      2,
      'always',
      [
        'feat',
        'fix',
        'improve',
        'perf',
        'refactor',
        'docs',
        'chore',
        'reformat',
        'test',
        'revert',
        'ci',
        'build',
        'db',
      ],
    ],
    'type-case': [2, 'always', 'lower-case'],
    'type-empty': [2, 'never'],
    'subject-empty': [2, 'never'],
    'subject-full-stop': [2, 'never', '.'],
    'header-max-length': [2, 'always', 72],
    'scope-empty': [0],
  },
};

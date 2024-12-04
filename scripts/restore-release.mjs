import {
  exec
} from 'child_process';
import fs from 'fs';

const restoreDatabaseDocker = async () => {
  const dumpFile = 'release/database/dump.sql';

  if (!fs.existsSync(dumpFile)) {
    throw new Error('Dump file does not exist.');
  }

  const containerName = 'postgres-5439-olp-dtu-2024';
  const dbUser = 'postgres';
  const dbDatabase = 'nocobase';
  const dbPassword = 'postgres';

  const command = `docker exec -i -e PGPASSWORD=${dbPassword} ${containerName} psql -U ${dbUser} -d ${dbDatabase} < ${dumpFile}`;
  console.log(`Executing: ${command}`);

  return new Promise((resolve, reject) => {
    exec(command, (error, stdout, stderr) => {
      if (error) {
        console.error(`Error: ${stderr}`);
        reject(stderr);
      } else {
        console.log(`Output: ${stdout}`);
        resolve(stdout);
      }
    });
  });
};

restoreDatabaseDocker()
  .then(() => {
    console.log('Database restored successfully.');
  })
  .catch((error) => {
    console.error('Error during database restoration:', error);
  });

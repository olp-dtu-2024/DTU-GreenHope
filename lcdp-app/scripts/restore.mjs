import {
  exec
} from 'child_process';
import dotenv from 'dotenv';
import fs from 'fs';

dotenv.config();

const restoreDatabaseDocker = async () => {
  const dumpFile = 'data/dump-schema.sql';

  if (!fs.existsSync(dumpFile)) {
    throw new Error('Dump file does not exist.');
  }

  const containerName = process.env.DB_CONTAINER || 'postgres-5439';
  const dbUser = process.env.DB_USER || 'postgres';
  const dbDatabase = process.env.DB_DATABASE || 'postgres';
  const dbPassword = process.env.DB_PASSWORD || 'postgres';

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

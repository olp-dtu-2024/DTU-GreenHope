import 'dotenv/config';
import { exec } from 'child_process';
import { mkdir } from 'fs/promises';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const dataDir = path.join(__dirname, '../data');
const outputFile = path.join(dataDir, 'dump-schema.sql');

async function dumpDatabase() {
  try {
    await mkdir(dataDir, { recursive: true });
    const command = `docker exec -e PGPASSWORD=${process.env.DB_PASSWORD} postgres-5439 pg_dump -v -c --if-exists -F p -U ${process.env.DB_USER} -d ${process.env.DB_DATABASE}`;
    exec(command, { shell: true }, (error, stdout, stderr) => {
      if (error) {
        console.error(`Error executing command: ${error.message}`);
        return;
      }
      if (stderr) {
        console.error(`Error in stderr: ${stderr}`);
        return;
      }
    }).stdout.pipe(fs.createWriteStream(outputFile));
  } catch (error) {
    console.error(`Failed to dump database: ${error.message}`);
    process.exit(1);
  }
}

dumpDatabase().catch(console.error);

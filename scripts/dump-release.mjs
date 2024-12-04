import {
  exec
} from 'child_process';
import {
  mkdir
} from 'fs/promises';
import fs from 'fs';
import path from 'path';
import {
  fileURLToPath
} from 'url';
import {
  dirname
} from 'path';

const __filename = fileURLToPath(
  import.meta.url);
const __dirname = dirname(__filename);
const dataDir = path.join(__dirname, '../release/database');
const outputFile = path.join(dataDir, 'dump.sql');

async function dumpDatabase() {
  try {
    await mkdir(dataDir, {
      recursive: true
    });
    const dbUser = 'postgres';
    const dbPassword = 'postgres';

    const command = `docker exec -e PGPASSWORD=${dbPassword} postgres-5439-olp-dtu-2024 pg_dump -v -c --if-exists -F p -U ${dbUser} -d nocobase`;

    const outputStream = fs.createWriteStream(outputFile);

    exec(command, {
      shell: true,
      maxBuffer: 1024 * 1024 * 10
    }, (error, stdout, stderr) => {
      if (error) {
        console.error(`Error executing command: ${error.message}`);
        return;
      }
      if (stderr) {
        console.error(`Error in stderr: ${stderr}`);
        return;
      }
    }).stdout.pipe(outputStream);

    outputStream.on('finish', () => {
      console.log('Database dump completed successfully.');
    });

    outputStream.on('error', (err) => {
      console.error('Error writing to file:', err);
    });
  } catch (error) {
    console.error(`Failed to dump database: ${error.message}`);
    process.exit(1);
  }
}

dumpDatabase().catch(console.error);

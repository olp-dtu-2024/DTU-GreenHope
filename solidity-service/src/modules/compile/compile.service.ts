import { QueueRedisService } from '@/core/queues/queue-redis.service';
import { Injectable } from '@nestjs/common';
import * as fs from 'fs';
import * as path from 'path';
import { execSync } from 'child_process';

@Injectable()
export class CompileService {
  constructor(private readonly queueRedisService: QueueRedisService) {}

  compileSolidify(data: { contractId: string; contracts: string }) {
    this.queueRedisService.enqueueCompile({
      data,
    });
  }

  executeCompile(data: { contractId: string; contracts: string }) {
    const { contractId, contracts } = data;
    console.log('CompileService: executeCompile', data);

    try {
      const contractsDir = path.join(process.cwd(), 'contracts');
      if (!fs.existsSync(contractsDir)) {
        fs.mkdirSync(contractsDir, { recursive: true });
      }

      const filePath = path.join(contractsDir, 'Contract.sol');
      fs.writeFileSync(filePath, contracts);

      execSync('npx hardhat compile', {
        encoding: 'utf-8',
        stdio: 'inherit',
      });

      const artifactsDir = path.join(
        process.cwd(),
        'artifacts/contracts/Contract.sol'
      );
      const files = fs.readdirSync(artifactsDir);
      const contractFile = files.find(
        (file) => file.endsWith('.json') && !file.endsWith('.dbg.json')
      );
      if (!contractFile) {
        throw new Error('Compiled contract JSON not found');
      }
      const contractJsonPath = path.join(artifactsDir, contractFile);
      const dataContract = JSON.parse(
        fs.readFileSync(contractJsonPath, 'utf8')
      );
      return dataContract;
    } catch (error) {
      console.error('Error writing contract file:', error);
      throw error;
    }
  }
}

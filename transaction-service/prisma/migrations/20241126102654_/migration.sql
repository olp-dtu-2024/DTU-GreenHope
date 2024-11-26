/*
  Warnings:

  - Changed the type of `direction` on the `Transaction` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "ETransactionDirection" AS ENUM ('INCOMING', 'OUTCOMING');

-- AlterTable
ALTER TABLE "Transaction" DROP COLUMN "direction",
ADD COLUMN     "direction" "ETransactionDirection" NOT NULL;

-- DropEnum
DROP TYPE "EDirecction";

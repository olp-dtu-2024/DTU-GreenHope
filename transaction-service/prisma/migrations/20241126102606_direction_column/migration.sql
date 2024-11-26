/*
  Warnings:

  - Added the required column `direction` to the `Transaction` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "EDirecction" AS ENUM ('INCOMING', 'OUTCOMING');

-- AlterTable
ALTER TABLE "Transaction" ADD COLUMN     "direction" "EDirecction" NOT NULL;

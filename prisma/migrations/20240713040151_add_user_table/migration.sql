-- CreateEnum
CREATE TYPE "UserType" AS ENUM ('COMUM', 'LOJISTA');

-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "register" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "carteira" DOUBLE PRECISION NOT NULL DEFAULT 0.0,
    "userType" "UserType" NOT NULL DEFAULT 'COMUM',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_register_key" ON "User"("register");

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

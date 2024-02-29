-- CreateExtension
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- CreateExtension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- CreateTable
CREATE TABLE "User" (
    "id" UUID NOT NULL,
    "creator_id" UUID NOT NULL,
    "updater_id" UUID NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3),
    "email" VARCHAR(50) NOT NULL,
    "hash" VARCHAR(100) NOT NULL,
    "first_name" VARCHAR(50),
    "last_name" VARCHAR(50),

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Bookmark" (
    "id" UUID NOT NULL,
    "creator_id" UUID NOT NULL,
    "updater_id" UUID NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3),
    "title" TEXT NOT NULL,
    "description" TEXT,
    "link" VARCHAR(255) NOT NULL,

    CONSTRAINT "Bookmark_pkey" PRIMARY KEY ("id")
);

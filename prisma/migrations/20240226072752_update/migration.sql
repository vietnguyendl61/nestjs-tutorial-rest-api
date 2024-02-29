-- AlterTable
ALTER TABLE "bookmarks" ALTER COLUMN "creator_id" DROP NOT NULL,
ALTER COLUMN "updater_id" DROP NOT NULL;

-- AlterTable
ALTER TABLE "users" ALTER COLUMN "creator_id" DROP NOT NULL,
ALTER COLUMN "updater_id" DROP NOT NULL;

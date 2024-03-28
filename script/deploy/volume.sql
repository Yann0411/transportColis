-- Revert transportColis:volume from pg
BEGIN;

ALTER TABLE package
RENAME COLUMN volume TO height;

ALTER TABLE package
ADD COLUMN width int DEFAULT 1;

ALTER TABLE package
ADD COLUMN depth int DEFAULT 1;

ALTER TABLE package
ALTER COLUMN width DROP DEFAULT;
ALTER TABLE package
ALTER COLUMN depth DROP DEFAULT;

COMMIT;



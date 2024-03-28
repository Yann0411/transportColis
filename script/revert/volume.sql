-- Deploy transportColis:volume to pg

BEGIN;

ALTER TABLE package
RENAME COLUMN height TO volume;

ALTER TABLE package
DROP COLUMN width;

ALTER TABLE package
DROP COLUMN depth;

COMMIT;
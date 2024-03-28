-- Revert transportColis:serial_number_UNIQUE from pg

BEGIN;
ALTER TABLE package
DROP CONSTRAINT serial_number_unique;
COMMIT;


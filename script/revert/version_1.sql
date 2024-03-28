-- Revert transportColis:version_1 from pg

BEGIN;

DROP TABLE IF EXISTS place, package CASCADE;

COMMIT;

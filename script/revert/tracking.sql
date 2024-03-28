-- Revert transportColis:tracking from pg

BEGIN;
ALTER TABLE package DROP COLUMN request_time ;
ALTER TABLE package DROP COLUMN expedition_time;
ALTER TABLE package DROP COLUMN delivered_time;
COMMIT;

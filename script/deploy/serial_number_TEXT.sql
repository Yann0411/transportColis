-- Deploy transportColis:serial_number_TEXT to pg

BEGIN;
ALTER TABLE package
ALTER COLUMN serial_number TYPE text USING serial_number::text;
COMMIT;

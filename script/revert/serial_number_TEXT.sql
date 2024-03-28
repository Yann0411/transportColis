-- Revert transportColis:serial_number_TEXT from pg


BEGIN;
ALTER TABLE package
ALTER COLUMN serial_number TYPE int USING serial_number::int;
COMMIT;

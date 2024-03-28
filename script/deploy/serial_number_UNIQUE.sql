-- Deploy transportColis:serial_number_UNIQUE to pg

BEGIN;
ALTER TABLE package
ADD CONSTRAINT serial_number_unique UNIQUE (serial_number);
COMMIT;

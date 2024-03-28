-- Deploy transportColis:tracking to pg

BEGIN;
ALTER TABLE package ADD COLUMN request_time TIMESTAMPTZ NOT NULL DEFAULT now();
ALTER TABLE package ADD COLUMN expedition_time TIMESTAMPTZ NULL;
ALTER TABLE package ADD COLUMN delivered_time TIMESTAMPTZ NULL;
COMMIT;
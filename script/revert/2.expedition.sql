-- Revert ocolis:2.init from pg

BEGIN;

DROP TABLE IF EXISTS expedition CASCADE;


COMMIT;

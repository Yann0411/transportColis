-- Revert ocolis:2.init from pg
BEGIN;
ALTER TABLE package
    ADD COLUMN expedition_time TIMESTAMPTZ;

   UPDATE  package SET expedition_time = (
	select starting_time from expedition where expedition.idtt = package.expedition_id
);

ALTER TABLE package
    DROP COLUMN expedition_id;


DROP TABLE IF EXISTS expedition;

COMMIT;

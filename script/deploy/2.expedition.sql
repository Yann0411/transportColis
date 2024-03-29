-- Deploy ocolis:2.init to pg

BEGIN;

CREATE TABLE expedition (
    idtt SERIAL PRIMARY KEY,
    driver_name TEXT NOT NULL,
    vehicle_plate TEXT NOT NULL,
    starting_time TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
    ending_time TIMESTAMP WITH TIME ZONE,
    package_id INT REFERENCES package(id)
);

ALTER TABLE package ADD COLUMN expedition_id int REFERENCES expedition(idtt);

INSERT INTO expedition (driver_name,vehicle_plate,starting_time)
SELECT DISTINCT 'inconnu','inconnu',expedition_time FROM package where expedition_time is NOT NULL;

UPDATE  package SET expedition_id = (
	select idtt from expedition where starting_time = package.expedition_time
);

ALTER TABLE package DROP COLUMN expedition_time;

COMMIT;

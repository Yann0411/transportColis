-- Verify ocolis:2.init on pg
BEGIN;
-- Select from the 'expedition' table to verify its structure
SELECT idtt, driver_name, vehicle_plate, starting_time, ending_time, package_id FROM expedition LIMIT 1;

ROLLBACK;

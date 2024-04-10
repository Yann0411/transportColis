BEGIN;

ALTER TABLE package
    ADD CONSTRAINT package_request_time_delivery_time CHECK(request_time < delivered_time);

CREATE DOMAIN int_to_be_positive AS integer CHECK (VALUE > 0);

ALTER TABLE package
    ALTER COLUMN width TYPE int_to_be_positive USING width::int_to_be_positive,
    ALTER COLUMN height TYPE int_to_be_positive USING height::int_to_be_positive,
    ALTER COLUMN depth TYPE int_to_be_positive USING depth::int_to_be_positive;

ALTER TABLE place
    ALTER COLUMN postal_code TYPE text USING postal_code::text;

CREATE DOMAIN postal_code_fr AS text CHECK (VALUE ~ '^[\d{5}$');
ALTER TABLE place
    ALTER COLUMN postal_code TYPE postal_code_fr;


CREATE DOMAIN plaque_immatriculation AS text CHECK (VALUE ~ '^[A-HJ-NP-TV-Z]{2}-\d{3}-[A-HJ-NP-TV-Z]{2}$'
 );

 ALTER TABLE expedition
    ALTER COLUMN vehicle_plate TYPE plaque_immatriculation;


COMMIT;

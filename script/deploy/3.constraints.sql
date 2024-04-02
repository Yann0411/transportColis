-- Deploy ocolis:3.constraints to pg

BEGIN;

ALTER TABLE package
    ADD CONSTRAINT package_request_time_delivery_time CHECK(request_time < delivered_time);

CREATE DOMAIN int_to_be_positive AS integer CHECK (VALUE > 0);

ALTER TABLE package
    ALTER COLUMN width TYPE int_to_be_positive,
    ALTER COLUMN height TYPE int_to_be_positive,
    ALTER COLUMN depth TYPE int_to_be_positive;


COMMIT;

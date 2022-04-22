-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_torrelabs_recommendation_saved_1';
--  obj_description
-- -----------------
--  iglu:com.torrelabs/RecommendationSaved/jsonschema/1-0-0
--  (1 row)

BEGIN TRANSACTION;

  ALTER TABLE atomic.com_torrelabs_recommendation_saved_1
    ADD COLUMN "completion_rate" DOUBLE PRECISION ENCODE RAW;
  ALTER TABLE atomic.com_torrelabs_recommendation_saved_1
    ADD COLUMN "step_name" VARCHAR(50) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_recommendation_saved_1
    ADD COLUMN "step_number" DOUBLE PRECISION ENCODE RAW;
  ALTER TABLE atomic.com_torrelabs_recommendation_saved_1
    ADD COLUMN "total_steps" DOUBLE PRECISION ENCODE RAW;

  COMMENT ON TABLE atomic.com_torrelabs_recommendation_saved_1 IS 'iglu:com.torrelabs/RecommendationSaved/jsonschema/1-0-1';

END TRANSACTION;

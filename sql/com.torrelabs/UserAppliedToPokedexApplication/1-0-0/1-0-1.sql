-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_torrelabs_user_applied_to_pokedex_application_1';
--  obj_description
-- -----------------
--  iglu:com.torrelabs/UserAppliedToPokedexApplication/jsonschema/1-0-0
--  (1 row)

BEGIN TRANSACTION;

  ALTER TABLE atomic.com_torrelabs_user_applied_to_pokedex_application_1
    ADD COLUMN "application_type" VARCHAR(100) ENCODE ZSTD;

  COMMENT ON TABLE atomic.com_torrelabs_user_applied_to_pokedex_application_1 IS 'iglu:com.torrelabs/UserAppliedToPokedexApplication/jsonschema/1-0-1';

END TRANSACTION;

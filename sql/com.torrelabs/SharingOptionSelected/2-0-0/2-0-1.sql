-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_torrelabs_sharing_option_selected_2';
--  obj_description
-- -----------------
--  iglu:com.torrelabs/SharingOptionSelected/jsonschema/2-0-0
--  (1 row)

BEGIN TRANSACTION;

  ALTER TABLE atomic.com_torrelabs_sharing_option_selected_2
    ADD COLUMN "share_token" VARCHAR(120) ENCODE ZSTD;

  COMMENT ON TABLE atomic.com_torrelabs_sharing_option_selected_2 IS 'iglu:com.torrelabs/SharingOptionSelected/jsonschema/2-0-1';

END TRANSACTION;

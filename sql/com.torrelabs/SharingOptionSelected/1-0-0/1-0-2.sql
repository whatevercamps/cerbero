-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_torrelabs_sharing_option_selected_1';
--  obj_description
-- -----------------
--  iglu:com.torrelabs/SharingOptionSelected/jsonschema/1-0-0
--  (1 row)

BEGIN TRANSACTION;

  ALTER TABLE atomic.com_torrelabs_sharing_option_selected_1
    ADD COLUMN "is_tester" BOOLEAN ENCODE RUNLENGTH;
  ALTER TABLE atomic.com_torrelabs_sharing_option_selected_1
    ADD COLUMN "page_section" VARCHAR(120) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_sharing_option_selected_1
    ADD COLUMN "page_type" VARCHAR(120) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_sharing_option_selected_1
    ADD COLUMN "share_medium" VARCHAR(120) ENCODE ZSTD;

  COMMENT ON TABLE atomic.com_torrelabs_sharing_option_selected_1 IS 'iglu:com.torrelabs/SharingOptionSelected/jsonschema/1-0-2';

END TRANSACTION;

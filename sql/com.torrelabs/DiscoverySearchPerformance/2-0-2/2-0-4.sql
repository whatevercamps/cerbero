-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_torrelabs_discovery_search_performance_2';
--  obj_description
-- -----------------
--  iglu:com.torrelabs/DiscoverySearchPerformance/jsonschema/2-0-2
--  (1 row)

-- NO ADDED COLUMNS CAN BE EXPRESSED IN SQL MIGRATION

  COMMENT ON TABLE atomic.com_torrelabs_discovery_search_performance_2 IS 'iglu:com.torrelabs/DiscoverySearchPerformance/jsonschema/2-0-4';


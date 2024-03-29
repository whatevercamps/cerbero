-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.10.0
-- Generated: 2022-07-13 14:26 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_opportunity_1 (
    "schema_vendor"  VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"    VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"  VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version" VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"        CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"    TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"       VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"       VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"     VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "created"        VARCHAR(120)  ENCODE ZSTD NOT NULL,
    "objective"      VARCHAR(120)  ENCODE ZSTD NOT NULL,
    "opportunity_id" BIGINT        ENCODE ZSTD NOT NULL,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_opportunity_1 IS 'iglu:com.torrelabs/opportunity/jsonschema/1-0-0';

ALTER TABLE atomic.com_torrelabs_opportunity_1 OWNER TO storageloadersnowcat;

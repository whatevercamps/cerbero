-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.8.0
-- Generated: 2022-04-13 22:24 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_experience_context_1 (
    "schema_vendor"   VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_name"     VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_format"   VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_version"  VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "root_id"         CHAR(36)         ENCODE RAW       NOT NULL,
    "root_tstamp"     TIMESTAMP        ENCODE ZSTD      NOT NULL,
    "ref_root"        VARCHAR(255)     ENCODE ZSTD      NOT NULL,
    "ref_tree"        VARCHAR(1500)    ENCODE ZSTD      NOT NULL,
    "ref_parent"      VARCHAR(255)     ENCODE ZSTD      NOT NULL,
    "additional_info" VARCHAR(210)     ENCODE ZSTD,
    "category"        VARCHAR(120)     ENCODE ZSTD,
    "contributions"   VARCHAR(210)     ENCODE ZSTD,
    "from_month"      VARCHAR(210)     ENCODE ZSTD,
    "from_year"       VARCHAR(210)     ENCODE ZSTD,
    "highlighted"     BOOLEAN          ENCODE RUNLENGTH,
    "location"        VARCHAR(140)     ENCODE ZSTD,
    "name"            VARCHAR(210)     ENCODE ZSTD,
    "rank"            DOUBLE PRECISION ENCODE RAW,
    "recommendations" DOUBLE PRECISION ENCODE RAW,
    "remote"          BOOLEAN          ENCODE RUNLENGTH,
    "title"           VARCHAR(210)     ENCODE ZSTD,
    "to_month"        VARCHAR(210)     ENCODE ZSTD,
    "to_year"         VARCHAR(210)     ENCODE ZSTD,
    "verifications"   DOUBLE PRECISION ENCODE RAW,
    "weight"          DOUBLE PRECISION ENCODE RAW,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_experience_context_1 IS 'iglu:com.torrelabs/ExperienceContext/jsonschema/1-0-1';
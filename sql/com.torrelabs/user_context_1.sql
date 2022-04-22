-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.8.0
-- Generated: 2022-04-13 22:24 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_user_context_1 (
    "schema_vendor"         VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_name"           VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_format"         VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_version"        VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "root_id"               CHAR(36)         ENCODE RAW       NOT NULL,
    "root_tstamp"           TIMESTAMP        ENCODE ZSTD      NOT NULL,
    "ref_root"              VARCHAR(255)     ENCODE ZSTD      NOT NULL,
    "ref_tree"              VARCHAR(1500)    ENCODE ZSTD      NOT NULL,
    "ref_parent"            VARCHAR(255)     ENCODE ZSTD      NOT NULL,
    "name"                  VARCHAR(210)     ENCODE ZSTD      NOT NULL,
    "type"                  VARCHAR(210)     ENCODE ZSTD      NOT NULL,
    "bio_completion"        DOUBLE PRECISION ENCODE RAW,
    "email"                 VARCHAR(420)     ENCODE ZSTD,
    "has_bio"               BOOLEAN          ENCODE RUNLENGTH,
    "has_picture"           BOOLEAN          ENCODE RUNLENGTH,
    "is_test"               BOOLEAN          ENCODE RUNLENGTH,
    "locale"                VARCHAR(20)      ENCODE ZSTD,
    "phone"                 VARCHAR(210)     ENCODE ZSTD,
    "professional_headline" VARCHAR(420)     ENCODE ZSTD,
    "public_id"             VARCHAR(210)     ENCODE ZSTD,
    "subject_id"            DOUBLE PRECISION ENCODE RAW,
    "weight"                DOUBLE PRECISION ENCODE RAW,
    "gg_id"                 VARCHAR(210)     ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_user_context_1 IS 'iglu:com.torrelabs/UserContext/jsonschema/1-0-1';

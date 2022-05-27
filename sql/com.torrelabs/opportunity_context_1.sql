-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.8.0
-- Generated: 2022-05-24 03:48 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_opportunity_context_1 (
    "schema_vendor"            VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_name"              VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_format"            VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_version"           VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "root_id"                  CHAR(36)         ENCODE RAW       NOT NULL,
    "root_tstamp"              TIMESTAMP        ENCODE ZSTD      NOT NULL,
    "ref_root"                 VARCHAR(255)     ENCODE ZSTD      NOT NULL,
    "ref_tree"                 VARCHAR(1500)    ENCODE ZSTD      NOT NULL,
    "ref_parent"               VARCHAR(255)     ENCODE ZSTD      NOT NULL,
    "id"                       VARCHAR(210)     ENCODE ZSTD      NOT NULL,
    "objective"                VARCHAR(120)     ENCODE ZSTD      NOT NULL,
    "agreement_type"           VARCHAR(120)     ENCODE ZSTD,
    "board_version"            VARCHAR(210)     ENCODE ZSTD,
    "commitment_code"          VARCHAR(120)     ENCODE ZSTD,
    "compensation_currency"    VARCHAR(210)     ENCODE ZSTD,
    "compensation_max"         DOUBLE PRECISION ENCODE RAW,
    "compensation_min"         DOUBLE PRECISION ENCODE RAW,
    "compensation_periodicity" VARCHAR(210)     ENCODE ZSTD,
    "completion"               DOUBLE PRECISION ENCODE RAW,
    "crawled"                  BOOLEAN          ENCODE RUNLENGTH,
    "created"                  VARCHAR(210)     ENCODE ZSTD,
    "deadline"                 VARCHAR(210)     ENCODE ZSTD,
    "external_info_source_url" VARCHAR(210)     ENCODE ZSTD,
    "finished_applications"    DOUBLE PRECISION ENCODE RAW,
    "has_attachments"          BOOLEAN          ENCODE RUNLENGTH,
    "language"                 VARCHAR(120)     ENCODE ZSTD,
    "locale"                   VARCHAR(12)      ENCODE ZSTD,
    "locations"                VARCHAR(210)     ENCODE ZSTD,
    "published"                BOOLEAN          ENCODE RUNLENGTH,
    "remote"                   BOOLEAN          ENCODE RUNLENGTH,
    "remote_anywhere"          BOOLEAN          ENCODE RUNLENGTH,
    "remote_timezone"          BOOLEAN          ENCODE RUNLENGTH,
    "slug"                     VARCHAR(210)     ENCODE ZSTD,
    "sponsor_visa"             VARCHAR(210)     ENCODE ZSTD,
    "stable_on"                VARCHAR(210)     ENCODE ZSTD,
    "start_date"               VARCHAR(120)     ENCODE ZSTD,
    "status"                   VARCHAR(210)     ENCODE ZSTD,
    "timezone"                 VARCHAR(120)     ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_opportunity_context_1 IS 'iglu:com.torrelabs/OpportunityContext/jsonschema/1-0-2';

ALTER TABLE atomic.com_torrelabs_opportunity_context_1 OWNER TO storageloadersnowcat;

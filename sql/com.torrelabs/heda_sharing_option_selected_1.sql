-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.10.0
-- Generated: 2022-07-13 14:26 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_heda_sharing_option_selected_1 (
    "schema_vendor"      VARCHAR(128)   ENCODE ZSTD      NOT NULL,
    "schema_name"        VARCHAR(128)   ENCODE ZSTD      NOT NULL,
    "schema_format"      VARCHAR(128)   ENCODE ZSTD      NOT NULL,
    "schema_version"     VARCHAR(128)   ENCODE ZSTD      NOT NULL,
    "root_id"            CHAR(36)       ENCODE RAW       NOT NULL,
    "root_tstamp"        TIMESTAMP      ENCODE ZSTD      NOT NULL,
    "ref_root"           VARCHAR(255)   ENCODE ZSTD      NOT NULL,
    "ref_tree"           VARCHAR(1500)  ENCODE ZSTD      NOT NULL,
    "ref_parent"         VARCHAR(255)   ENCODE ZSTD      NOT NULL,
    "label"              VARCHAR(10000) ENCODE ZSTD      NOT NULL,
    "link"               VARCHAR(10000) ENCODE ZSTD      NOT NULL,
    "is_tester"          VARCHAR(10000) ENCODE ZSTD,
    "subject_id"         VARCHAR(10000) ENCODE ZSTD,
    "section"            VARCHAR(10000) ENCODE ZSTD      NOT NULL,
    "context_page_title" VARCHAR(10000) ENCODE ZSTD,
    "email"              VARCHAR(10000) ENCODE ZSTD,
    "event_name"         VARCHAR(10000) ENCODE ZSTD,
    "href"               VARCHAR(10000) ENCODE ZSTD,
    "is_mobile"          BOOLEAN        ENCODE RUNLENGTH,
    "origin"             VARCHAR(10000) ENCODE ZSTD,
    "pathname"           VARCHAR(10000) ENCODE ZSTD,
    "port"               INT            ENCODE ZSTD,
    "protocol"           VARCHAR(10000) ENCODE ZSTD,
    "public_id"          VARCHAR(10000) ENCODE ZSTD,
    "search"             VARCHAR(10000) ENCODE ZSTD,
    "send_at"            VARCHAR(10000) ENCODE ZSTD,
    "user_agent"         VARCHAR(10000) ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_heda_sharing_option_selected_1 IS 'iglu:com.torrelabs/HedaSharingOptionSelected/jsonschema/1-0-3';

ALTER TABLE atomic.com_torrelabs_heda_sharing_option_selected_1 OWNER TO storageloadersnowcat;
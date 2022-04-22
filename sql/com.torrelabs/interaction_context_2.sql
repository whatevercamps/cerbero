-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.8.0
-- Generated: 2022-04-14 01:19 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_interaction_context_2 (
    "schema_vendor"  VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "schema_name"    VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "schema_format"  VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "schema_version" VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "root_id"        CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"    TIMESTAMP     ENCODE ZSTD      NOT NULL,
    "ref_root"       VARCHAR(255)  ENCODE ZSTD      NOT NULL,
    "ref_tree"       VARCHAR(1500) ENCODE ZSTD      NOT NULL,
    "ref_parent"     VARCHAR(255)  ENCODE ZSTD      NOT NULL,
    "channel"        VARCHAR(120)  ENCODE ZSTD,
    "flow"           VARCHAR(80)   ENCODE ZSTD,
    "interaction"    VARCHAR(120)  ENCODE ZSTD,
    "locale"         VARCHAR(12)   ENCODE ZSTD,
    "next"           VARCHAR(420)  ENCODE ZSTD,
    "onboarding"     BOOLEAN       ENCODE RUNLENGTH,
    "page_type"      VARCHAR(120)  ENCODE ZSTD,
    "path"           VARCHAR(120)  ENCODE ZSTD,
    "section"        VARCHAR(120)  ENCODE ZSTD,
    "source"         VARCHAR(80)   ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_interaction_context_2 IS 'iglu:com.torrelabs/InteractionContext/jsonschema/2-0-0';

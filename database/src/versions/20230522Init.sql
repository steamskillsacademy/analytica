\set PGUSER_READ_ONLY `echo $PGUSER_READ_ONLY`

CREATE SCHEMA IF NOT EXISTS misc;

GRANT CONNECT ON DATABASE main TO :PGUSER_READ_ONLY;
GRANT USAGE ON SCHEMA misc TO :PGUSER_READ_ONLY;
GRANT SELECT ON ALL TABLES IN SCHEMA misc TO :PGUSER_READ_ONLY;

CREATE TABLE IF NOT EXISTS misc.versions
(
    script_name  text,
    migrate_time date
);

CREATE TABLE IF NOT EXISTS table_090 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_char_10_ CHAR(10),
    col_3_bigint BIGINT NOT NULL,
    col_4_inet INET NOT NULL,
    col_5_cidr CIDR,
    col_6_jsonb JSONB DEFAULT '{}',
    col_7_jsonb JSONB
);
CREATE INDEX idx_table_090_col3 ON table_090 (col_3_char_10_);
CREATE INDEX idx_table_090_col7 ON table_090 (col_7_inet);

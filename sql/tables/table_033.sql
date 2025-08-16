CREATE TABLE IF NOT EXISTS table_033 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_bytea BYTEA,
    col_3_time TIME,
    col_4_timestamp TIMESTAMP NOT NULL,
    col_5_macaddr MACADDR NOT NULL,
    col_6_bigint BIGINT
);
CREATE INDEX idx_table_033_col6 ON table_033 (col_6_char_10_);
CREATE INDEX idx_table_033_col1 ON table_033 (col_1_macaddr);
CREATE INDEX idx_table_033_col6 ON table_033 (col_6_json);
CREATE INDEX idx_table_033_col1 ON table_033 (col_1_uuid);

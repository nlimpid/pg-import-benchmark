CREATE TABLE IF NOT EXISTS table_025 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10),
    col_2_bytea BYTEA,
    col_3_time TIME,
    col_4_time TIME,
    col_5_inet INET NOT NULL,
    col_6_double_precision DOUBLE PRECISION,
    col_7_timestamp TIMESTAMP,
    col_8_date DATE,
    col_9_integer INTEGER,
    col_10_bigint BIGINT,
    col_11_char_10_ CHAR(10) DEFAULT '',
    col_12_bytea BYTEA NOT NULL,
    col_13_bigint BIGINT,
    col_14_text TEXT DEFAULT '',
    col_15_inet INET
);
CREATE INDEX idx_table_025_col12_1 ON table_025 (col_12_bytea);
CREATE INDEX idx_table_025_col3_2 ON table_025 (col_3_time);

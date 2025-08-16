CREATE TABLE IF NOT EXISTS table_009 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT,
    col_2_double_precision DOUBLE PRECISION,
    col_3_text TEXT,
    col_4_jsonb JSONB,
    col_5_real REAL,
    col_6_decimal_10_2_ DECIMAL(10,2),
    col_7_text TEXT DEFAULT '',
    col_8_cidr CIDR,
    col_9_jsonb JSONB,
    col_10_double_precision DOUBLE PRECISION,
    col_11_varchar_255_ VARCHAR(255) NOT NULL,
    col_12_char_10_ CHAR(10),
    col_13_bigint BIGINT DEFAULT 0,
    col_14_decimal_10_2_ DECIMAL(10,2),
    col_15_text TEXT
);
CREATE INDEX idx_table_009_col2 ON table_009 (col_2_text);
CREATE INDEX idx_table_009_col8 ON table_009 (col_8_uuid);
CREATE INDEX idx_table_009_col9 ON table_009 (col_9_bytea);
CREATE INDEX idx_table_009_col2 ON table_009 (col_2_char_10_);

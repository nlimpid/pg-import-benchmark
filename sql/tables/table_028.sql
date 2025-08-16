CREATE TABLE IF NOT EXISTS table_028 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_json JSON DEFAULT '{}',
    col_3_double_precision DOUBLE PRECISION,
    col_4_char_10_ CHAR(10),
    col_5_json JSON NOT NULL,
    col_6_real REAL,
    col_7_text TEXT NOT NULL,
    col_8_decimal_10_2_ DECIMAL(10,2),
    col_9_bytea BYTEA,
    col_10_text TEXT DEFAULT ''
);
CREATE INDEX idx_table_028_col5 ON table_028 (col_5_time);
CREATE INDEX idx_table_028_col3 ON table_028 (col_3_double_precision);
CREATE INDEX idx_table_028_col6 ON table_028 (col_6_macaddr);
CREATE INDEX idx_table_028_col10 ON table_028 (col_10_jsonb);

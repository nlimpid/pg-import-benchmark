CREATE TABLE IF NOT EXISTS table_041 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10),
    col_2_varchar_255_ VARCHAR(255) NOT NULL,
    col_3_double_precision DOUBLE PRECISION,
    col_4_bytea BYTEA NOT NULL,
    col_5_text TEXT,
    col_6_text TEXT DEFAULT '',
    col_7_numeric_15_4_ NUMERIC(15,4),
    col_8_text TEXT NOT NULL DEFAULT '',
    col_9_decimal_10_2_ DECIMAL(10,2),
    col_10_integer INTEGER,
    col_11_real REAL,
    col_12_boolean BOOLEAN,
    col_13_numeric_15_4_ NUMERIC(15,4),
    col_14_char_10_ CHAR(10) DEFAULT ''
);
CREATE INDEX idx_table_041_col1 ON table_041 (col_1_timestamp);
CREATE INDEX idx_table_041_col14 ON table_041 (col_14_numeric_15_4_);
CREATE INDEX idx_table_041_col2 ON table_041 (col_2_uuid);
CREATE INDEX idx_table_041_col12 ON table_041 (col_12_macaddr);

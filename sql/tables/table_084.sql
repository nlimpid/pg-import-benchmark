CREATE TABLE IF NOT EXISTS table_084 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10) NOT NULL DEFAULT '',
    col_2_varchar_255_ VARCHAR(255) NOT NULL,
    col_3_text TEXT DEFAULT '',
    col_4_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_5_time TIME NOT NULL,
    col_6_macaddr MACADDR,
    col_7_text TEXT,
    col_8_json JSON DEFAULT '{}',
    col_9_double_precision DOUBLE PRECISION,
    col_10_cidr CIDR,
    col_11_integer INTEGER,
    col_12_macaddr MACADDR,
    col_13_text TEXT DEFAULT '',
    col_14_timestamp TIMESTAMP,
    col_15_real REAL NOT NULL
);
CREATE INDEX idx_table_084_col10_1 ON table_084 (col_10_cidr);
CREATE INDEX idx_table_084_col2_2 ON table_084 (col_2_varchar_255_);
CREATE INDEX idx_table_084_col10_3 ON table_084 (col_10_cidr);

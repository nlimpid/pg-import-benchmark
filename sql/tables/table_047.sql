CREATE TABLE IF NOT EXISTS table_047 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10) NOT NULL DEFAULT '',
    col_2_macaddr MACADDR,
    col_3_char_10_ CHAR(10),
    col_4_varchar_255_ VARCHAR(255),
    col_5_bigint BIGINT DEFAULT 0,
    col_6_json JSON DEFAULT '{}',
    col_7_real REAL,
    col_8_double_precision DOUBLE PRECISION NOT NULL,
    col_9_inet INET,
    col_10_inet INET,
    col_11_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_12_double_precision DOUBLE PRECISION,
    col_13_jsonb JSONB NOT NULL,
    col_14_decimal_10_2_ DECIMAL(10,2),
    col_15_cidr CIDR
);
CREATE INDEX idx_table_047_col13 ON table_047 (col_13_decimal_10_2_);
CREATE INDEX idx_table_047_col3 ON table_047 (col_3_char_10_);
CREATE INDEX idx_table_047_col9 ON table_047 (col_9_inet);

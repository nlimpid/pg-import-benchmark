CREATE TABLE IF NOT EXISTS table_017 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_cidr CIDR,
    col_2_boolean BOOLEAN DEFAULT false,
    col_3_macaddr MACADDR NOT NULL,
    col_4_decimal_10_2_ DECIMAL(10,2),
    col_5_text TEXT DEFAULT '',
    col_6_integer INTEGER NOT NULL,
    col_7_json JSON,
    col_8_json JSON,
    col_9_real REAL NOT NULL,
    col_10_varchar_255_ VARCHAR(255)
);
CREATE INDEX idx_table_017_col10_1 ON table_017 (col_10_varchar_255_);
CREATE INDEX idx_table_017_col1_2 ON table_017 (col_1_cidr);
CREATE INDEX idx_table_017_col5_3 ON table_017 (col_5_text);
CREATE INDEX idx_table_017_col6_4 ON table_017 (col_6_integer);

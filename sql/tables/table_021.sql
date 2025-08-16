CREATE TABLE IF NOT EXISTS table_021 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT DEFAULT '',
    col_2_integer INTEGER NOT NULL DEFAULT 0,
    col_3_timestamp TIMESTAMP,
    col_4_timestamp TIMESTAMP,
    col_5_cidr CIDR NOT NULL,
    col_6_uuid UUID,
    col_7_double_precision DOUBLE PRECISION,
    col_8_varchar_255_ VARCHAR(255) NOT NULL,
    col_9_json JSON NOT NULL,
    col_10_numeric_15_4_ NUMERIC(15,4),
    col_11_uuid UUID NOT NULL,
    col_12_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_13_real REAL,
    col_14_date DATE,
    col_15_json JSON
);
CREATE INDEX idx_table_021_col13 ON table_021 (col_13_macaddr);
CREATE INDEX idx_table_021_col5 ON table_021 (col_5_integer);
CREATE INDEX idx_table_021_col1 ON table_021 (col_1_real);
CREATE INDEX idx_table_021_col10 ON table_021 (col_10_text);

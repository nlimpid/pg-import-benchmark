CREATE TABLE IF NOT EXISTS table_095 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_json JSON DEFAULT '{}',
    col_3_integer INTEGER NOT NULL,
    col_4_numeric_15_4_ NUMERIC(15,4),
    col_5_real REAL,
    col_6_jsonb JSONB,
    col_7_bigint BIGINT DEFAULT 0,
    col_8_timestamp TIMESTAMP NOT NULL,
    col_9_decimal_10_2_ DECIMAL(10,2),
    col_10_double_precision DOUBLE PRECISION,
    col_11_time TIME
);
CREATE INDEX idx_table_095_col1_2 ON table_095 (col_1_date);
CREATE INDEX idx_table_095_col11_3 ON table_095 (col_11_time);

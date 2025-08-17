CREATE TABLE IF NOT EXISTS table_036 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB DEFAULT '{}',
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_time TIME NOT NULL,
    col_4_time TIME,
    col_5_text TEXT NOT NULL DEFAULT '',
    col_6_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_7_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_8_bigint BIGINT NOT NULL,
    col_9_cidr CIDR,
    col_10_numeric_15_4_ NUMERIC(15,4),
    col_11_inet INET,
    col_12_date DATE,
    col_13_inet INET,
    col_14_varchar_255_ VARCHAR(255),
    col_15_time TIME
);
CREATE INDEX idx_table_036_col11_1 ON table_036 (col_11_inet);
CREATE INDEX idx_table_036_col12_2 ON table_036 (col_12_date);

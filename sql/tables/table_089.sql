CREATE TABLE IF NOT EXISTS table_089 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_decimal_10_2_ DECIMAL(10,2),
    col_3_inet INET,
    col_4_double_precision DOUBLE PRECISION,
    col_5_json JSON NOT NULL DEFAULT '{}',
    col_6_jsonb JSONB,
    col_7_real REAL,
    col_8_double_precision DOUBLE PRECISION NOT NULL
);
CREATE INDEX idx_table_089_col7_1 ON table_089 (col_7_real);
CREATE INDEX idx_table_089_col2_2 ON table_089 (col_2_decimal_10_2_);
CREATE INDEX idx_table_089_col2_3 ON table_089 (col_2_decimal_10_2_);
CREATE INDEX idx_table_089_col4_4 ON table_089 (col_4_double_precision);

CREATE TABLE IF NOT EXISTS table_019 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER NOT NULL,
    col_2_jsonb JSONB DEFAULT '{}',
    col_3_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_4_bigint BIGINT,
    col_5_real REAL,
    col_6_bytea BYTEA,
    col_7_numeric_15_4_ NUMERIC(15,4),
    col_8_decimal_10_2_ DECIMAL(10,2),
    col_9_text TEXT NOT NULL,
    col_10_varchar_255_ VARCHAR(255) NOT NULL,
    col_11_double_precision DOUBLE PRECISION NOT NULL,
    col_12_json JSON NOT NULL,
    col_13_time TIME NOT NULL,
    col_14_integer INTEGER DEFAULT 0,
    col_15_jsonb JSONB
);
CREATE INDEX idx_table_019_col3_1 ON table_019 (col_3_date);
CREATE INDEX idx_table_019_col15_3_gin ON table_019 USING GIN (col_15_jsonb);
CREATE INDEX idx_table_019_col14_4 ON table_019 (col_14_integer);

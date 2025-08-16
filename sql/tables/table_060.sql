CREATE TABLE IF NOT EXISTS table_060 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA NOT NULL,
    col_2_uuid UUID NOT NULL,
    col_3_time TIME NOT NULL,
    col_4_time TIME,
    col_5_text TEXT DEFAULT '',
    col_6_decimal_10_2_ DECIMAL(10,2),
    col_7_numeric_15_4_ NUMERIC(15,4),
    col_8_double_precision DOUBLE PRECISION,
    col_9_jsonb JSONB,
    col_10_double_precision DOUBLE PRECISION NOT NULL
);
CREATE INDEX idx_table_060_col1 ON table_060 (col_1_varchar_255_);
CREATE INDEX idx_table_060_col7 ON table_060 (col_7_time);
CREATE INDEX idx_table_060_col3 ON table_060 (col_3_jsonb);

CREATE TABLE IF NOT EXISTS table_027 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_real REAL NOT NULL,
    col_4_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_cidr CIDR NOT NULL,
    col_7_cidr CIDR,
    col_8_varchar_255_ VARCHAR(255) DEFAULT '',
    col_9_integer INTEGER NOT NULL DEFAULT 0
);
CREATE INDEX idx_table_027_col2_1 ON table_027 (col_2_numeric_15_4_);
CREATE INDEX idx_table_027_col5_2 ON table_027 (col_5_numeric_15_4_);
CREATE INDEX idx_table_027_col2_3 ON table_027 (col_2_numeric_15_4_);

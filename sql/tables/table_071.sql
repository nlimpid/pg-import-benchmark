CREATE TABLE IF NOT EXISTS table_071 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB,
    col_2_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_3_integer INTEGER NOT NULL,
    col_4_time TIME,
    col_5_date DATE,
    col_6_time TIME
);
CREATE INDEX idx_table_071_col5 ON table_071 (col_5_numeric_15_4_);
CREATE INDEX idx_table_071_col6 ON table_071 (col_6_decimal_10_2_);
CREATE INDEX idx_table_071_col5 ON table_071 (col_5_uuid);

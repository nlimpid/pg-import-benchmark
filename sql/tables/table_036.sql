CREATE TABLE IF NOT EXISTS table_036 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_double_precision DOUBLE PRECISION NOT NULL,
    col_3_date DATE,
    col_4_varchar_255_ VARCHAR(255),
    col_5_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_036_col5 ON table_036 (col_5_timestamp);
CREATE INDEX idx_table_036_col2 ON table_036 (col_2_text);

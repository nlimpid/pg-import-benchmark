CREATE TABLE IF NOT EXISTS table_063 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT,
    col_2_decimal_10_2_ DECIMAL(10,2),
    col_3_date DATE DEFAULT CURRENT_DATE,
    col_4_jsonb JSONB,
    col_5_timestamp TIMESTAMP,
    col_6_integer INTEGER NOT NULL,
    col_7_bytea BYTEA,
    col_8_char_10_ CHAR(10)
);
CREATE INDEX idx_table_063_col1 ON table_063 (col_1_time);
CREATE INDEX idx_table_063_col5 ON table_063 (col_5_numeric_15_4_);
CREATE INDEX idx_table_063_col4 ON table_063 (col_4_real);

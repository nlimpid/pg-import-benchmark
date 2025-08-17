CREATE TABLE IF NOT EXISTS table_022 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255) DEFAULT '',
    col_2_timestamp TIMESTAMP,
    col_3_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_4_integer INTEGER DEFAULT 0,
    col_5_integer INTEGER NOT NULL,
    col_6_boolean BOOLEAN NOT NULL,
    col_7_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_8_bigint BIGINT DEFAULT 0,
    col_9_inet INET,
    col_10_char_10_ CHAR(10),
    col_11_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_022_col4_1 ON table_022 (col_4_integer);
CREATE INDEX idx_table_022_col3_2 ON table_022 (col_3_decimal_10_2_);
CREATE INDEX idx_table_022_col2_3 ON table_022 (col_2_timestamp);

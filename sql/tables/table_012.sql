CREATE TABLE IF NOT EXISTS table_012 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_decimal_10_2_ DECIMAL(10,2),
    col_2_bigint BIGINT,
    col_3_time TIME,
    col_4_timestamp TIMESTAMP NOT NULL,
    col_5_macaddr MACADDR,
    col_6_char_10_ CHAR(10),
    col_7_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_8_macaddr MACADDR,
    col_9_timestamp TIMESTAMP NOT NULL,
    col_10_text TEXT,
    col_11_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_12_decimal_10_2_ DECIMAL(10,2),
    col_13_varchar_255_ VARCHAR(255) NOT NULL,
    col_14_bytea BYTEA NOT NULL,
    col_15_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_012_col6_1 ON table_012 (col_6_char_10_);
CREATE INDEX idx_table_012_col10_2 ON table_012 (col_10_text);
CREATE INDEX idx_table_012_col5_3 ON table_012 (col_5_macaddr);
CREATE INDEX idx_table_012_col15_4 ON table_012 (col_15_numeric_15_4_);

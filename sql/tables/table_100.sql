CREATE TABLE IF NOT EXISTS table_100 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT,
    col_2_jsonb JSONB,
    col_3_uuid UUID NOT NULL,
    col_4_date DATE NOT NULL,
    col_5_date DATE NOT NULL,
    col_6_char_10_ CHAR(10) DEFAULT '',
    col_7_varchar_255_ VARCHAR(255) DEFAULT '',
    col_8_time TIME,
    col_9_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_10_macaddr MACADDR,
    col_11_real REAL NOT NULL,
    col_12_decimal_10_2_ DECIMAL(10,2)
);
CREATE INDEX idx_table_100_col7 ON table_100 (col_7_real);
CREATE INDEX idx_table_100_col9 ON table_100 (col_9_macaddr);

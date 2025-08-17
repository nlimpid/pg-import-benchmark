CREATE TABLE IF NOT EXISTS table_002 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT NOT NULL,
    col_2_char_10_ CHAR(10) NOT NULL,
    col_3_bigint BIGINT NOT NULL,
    col_4_decimal_10_2_ DECIMAL(10,2),
    col_5_real REAL,
    col_6_timestamp TIMESTAMP NOT NULL,
    col_7_time TIME,
    col_8_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    col_9_integer INTEGER,
    col_10_json JSON
);
CREATE INDEX idx_table_002_col9_1 ON table_002 (col_9_integer);
CREATE INDEX idx_table_002_col1_2 ON table_002 (col_1_bigint);

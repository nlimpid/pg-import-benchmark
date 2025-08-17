CREATE TABLE IF NOT EXISTS table_070 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_bigint BIGINT NOT NULL,
    col_3_numeric_15_4_ NUMERIC(15,4),
    col_4_varchar_255_ VARCHAR(255) NOT NULL,
    col_5_boolean BOOLEAN NOT NULL,
    col_6_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_7_double_precision DOUBLE PRECISION,
    col_8_bigint BIGINT NOT NULL
);
CREATE INDEX idx_table_070_col7_1 ON table_070 (col_7_double_precision);
CREATE INDEX idx_table_070_col7_2 ON table_070 (col_7_double_precision);
CREATE INDEX idx_table_070_col6_3 ON table_070 (col_6_timestamp);

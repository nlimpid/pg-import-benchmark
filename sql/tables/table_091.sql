CREATE TABLE IF NOT EXISTS table_091 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_bigint BIGINT DEFAULT 0,
    col_3_integer INTEGER,
    col_4_char_10_ CHAR(10) NOT NULL,
    col_5_varchar_255_ VARCHAR(255),
    col_6_bigint BIGINT,
    col_7_bigint BIGINT DEFAULT 0,
    col_8_jsonb JSONB,
    col_9_date DATE,
    col_10_bytea BYTEA,
    col_11_boolean BOOLEAN DEFAULT false,
    col_12_real REAL,
    col_13_time TIME NOT NULL,
    col_14_double_precision DOUBLE PRECISION
);
CREATE INDEX idx_table_091_col14_1 ON table_091 (col_14_double_precision);
CREATE INDEX idx_table_091_col7_2 ON table_091 (col_7_bigint);
CREATE INDEX idx_table_091_col10_3 ON table_091 (col_10_bytea);
CREATE INDEX idx_table_091_col10_4 ON table_091 (col_10_bytea);

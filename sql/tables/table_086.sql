CREATE TABLE IF NOT EXISTS table_086 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB,
    col_2_inet INET,
    col_3_boolean BOOLEAN,
    col_4_timestamp TIMESTAMP,
    col_5_date DATE,
    col_6_real REAL,
    col_7_integer INTEGER,
    col_8_double_precision DOUBLE PRECISION,
    col_9_boolean BOOLEAN DEFAULT false,
    col_10_date DATE NOT NULL,
    col_11_varchar_255_ VARCHAR(255) NOT NULL DEFAULT '',
    col_12_boolean BOOLEAN NOT NULL
);
CREATE INDEX idx_table_086_col7 ON table_086 (col_7_jsonb);
CREATE INDEX idx_table_086_col12 ON table_086 (col_12_double_precision);

CREATE TABLE IF NOT EXISTS table_049 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT NOT NULL DEFAULT '',
    col_2_bigint BIGINT,
    col_3_inet INET NOT NULL,
    col_4_char_10_ CHAR(10) DEFAULT '',
    col_5_real REAL,
    col_6_inet INET,
    col_7_jsonb JSONB,
    col_8_varchar_255_ VARCHAR(255),
    col_9_jsonb JSONB NOT NULL,
    col_10_time TIME,
    col_11_text TEXT NOT NULL,
    col_12_double_precision DOUBLE PRECISION,
    col_13_time TIME,
    col_14_numeric_15_4_ NUMERIC(15,4),
    col_15_bigint BIGINT DEFAULT 0
);
CREATE INDEX idx_table_049_col14_1 ON table_049 (col_14_numeric_15_4_);
CREATE INDEX idx_table_049_col2_2 ON table_049 (col_2_bigint);

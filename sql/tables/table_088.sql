CREATE TABLE IF NOT EXISTS table_088 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB NOT NULL,
    col_2_uuid UUID,
    col_3_jsonb JSONB,
    col_4_date DATE,
    col_5_real REAL NOT NULL,
    col_6_date DATE DEFAULT CURRENT_DATE,
    col_7_uuid UUID,
    col_8_integer INTEGER NOT NULL,
    col_9_uuid UUID NOT NULL,
    col_10_inet INET,
    col_11_bigint BIGINT,
    col_12_varchar_255_ VARCHAR(255),
    col_13_time TIME,
    col_14_uuid UUID,
    col_15_char_10_ CHAR(10) NOT NULL DEFAULT ''
);
CREATE INDEX idx_table_088_col11 ON table_088 (col_11_numeric_15_4_);
CREATE INDEX idx_table_088_col14 ON table_088 (col_14_inet);

CREATE TABLE IF NOT EXISTS table_020 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT NOT NULL,
    col_2_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_3_bytea BYTEA,
    col_4_jsonb JSONB DEFAULT '{}',
    col_5_jsonb JSONB NOT NULL,
    col_6_time TIME,
    col_7_time TIME NOT NULL,
    col_8_text TEXT DEFAULT '',
    col_9_date DATE DEFAULT CURRENT_DATE,
    col_10_varchar_255_ VARCHAR(255) NOT NULL,
    col_11_integer INTEGER DEFAULT 0
);
CREATE INDEX idx_table_020_col6 ON table_020 (col_6_inet);
CREATE INDEX idx_table_020_col4 ON table_020 (col_4_json);
CREATE INDEX idx_table_020_col11 ON table_020 (col_11_bigint);
CREATE INDEX idx_table_020_col4 ON table_020 (col_4_json);

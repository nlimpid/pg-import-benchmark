CREATE TABLE IF NOT EXISTS table_087 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_double_precision DOUBLE PRECISION,
    col_3_json JSON NOT NULL,
    col_4_bigint BIGINT DEFAULT 0,
    col_5_time TIME NOT NULL,
    col_6_bytea BYTEA,
    col_7_text TEXT,
    col_8_integer INTEGER NOT NULL,
    col_9_json JSON,
    col_10_inet INET,
    col_11_decimal_10_2_ DECIMAL(10,2) NOT NULL
);
CREATE INDEX idx_table_087_col2_1 ON table_087 (col_2_double_precision);

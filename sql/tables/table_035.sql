CREATE TABLE IF NOT EXISTS table_035 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT NOT NULL,
    col_2_json JSON NOT NULL DEFAULT '{}',
    col_3_real REAL NOT NULL,
    col_4_bytea BYTEA,
    col_5_time TIME,
    col_6_decimal_10_2_ DECIMAL(10,2),
    col_7_boolean BOOLEAN NOT NULL,
    col_8_real REAL,
    col_9_real REAL,
    col_10_bytea BYTEA,
    col_11_uuid UUID,
    col_12_bytea BYTEA,
    col_13_varchar_255_ VARCHAR(255),
    col_14_varchar_255_ VARCHAR(255)
);
CREATE INDEX idx_table_035_col8_1 ON table_035 (col_8_real);
CREATE INDEX idx_table_035_col1_2 ON table_035 (col_1_text);
CREATE INDEX idx_table_035_col14_3 ON table_035 (col_14_varchar_255_);

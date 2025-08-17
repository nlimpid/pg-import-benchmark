CREATE TABLE IF NOT EXISTS table_093 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4),
    col_2_bytea BYTEA NOT NULL,
    col_3_real REAL,
    col_4_char_10_ CHAR(10) DEFAULT '',
    col_5_time TIME,
    col_6_json JSON,
    col_7_bytea BYTEA,
    col_8_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_table_093_col5_1 ON table_093 (col_5_time);
CREATE INDEX idx_table_093_col1_2 ON table_093 (col_1_numeric_15_4_);

CREATE TABLE IF NOT EXISTS table_064 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_decimal_10_2_ DECIMAL(10,2),
    col_2_time TIME,
    col_3_time TIME,
    col_4_timestamp TIMESTAMP,
    col_5_text TEXT DEFAULT '',
    col_6_boolean BOOLEAN NOT NULL,
    col_7_jsonb JSONB NOT NULL,
    col_8_date DATE,
    col_9_date DATE NOT NULL,
    col_10_varchar_255_ VARCHAR(255),
    col_11_varchar_255_ VARCHAR(255),
    col_12_macaddr MACADDR,
    col_13_jsonb JSONB NOT NULL,
    col_14_integer INTEGER DEFAULT 0
);
CREATE INDEX idx_table_064_col12 ON table_064 (col_12_real);
CREATE INDEX idx_table_064_col1 ON table_064 (col_1_integer);
CREATE INDEX idx_table_064_col3 ON table_064 (col_3_text);
CREATE INDEX idx_table_064_col2 ON table_064 (col_2_json);

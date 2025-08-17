CREATE TABLE IF NOT EXISTS table_038 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT,
    col_2_json JSON DEFAULT '{}',
    col_3_json JSON DEFAULT '{}',
    col_4_timestamp TIMESTAMP,
    col_5_char_10_ CHAR(10),
    col_6_char_10_ CHAR(10),
    col_7_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_8_real REAL,
    col_9_integer INTEGER,
    col_10_inet INET,
    col_11_text TEXT
);
CREATE INDEX idx_table_038_col9_1 ON table_038 (col_9_integer);
CREATE INDEX idx_table_038_col8_2 ON table_038 (col_8_real);
CREATE INDEX idx_table_038_col11_3 ON table_038 (col_11_text);
ALTER TABLE table_038 ADD CONSTRAINT uk_table_038_col11 UNIQUE (col_11_text);

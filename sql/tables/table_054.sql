CREATE TABLE IF NOT EXISTS table_054 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_decimal_10_2_ DECIMAL(10,2),
    col_2_integer INTEGER,
    col_3_char_10_ CHAR(10) NOT NULL,
    col_4_decimal_10_2_ DECIMAL(10,2),
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_jsonb JSONB,
    col_7_real REAL NOT NULL,
    col_8_varchar_255_ VARCHAR(255),
    col_9_time TIME,
    col_10_boolean BOOLEAN NOT NULL,
    col_11_timestamp TIMESTAMP NOT NULL,
    col_12_uuid UUID,
    col_13_json JSON NOT NULL,
    col_14_date DATE
);
CREATE INDEX idx_table_054_col12 ON table_054 (col_12_inet);
CREATE INDEX idx_table_054_col6 ON table_054 (col_6_char_10_);
CREATE INDEX idx_table_054_col9 ON table_054 (col_9_bigint);
CREATE INDEX idx_table_054_col4 ON table_054 (col_4_timestamp);
ALTER TABLE table_054 ADD CONSTRAINT uk_table_054_col5 UNIQUE (col_5_decimal_10_2_);

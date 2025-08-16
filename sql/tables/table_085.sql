CREATE TABLE IF NOT EXISTS table_085 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT NOT NULL,
    col_2_integer INTEGER DEFAULT 0,
    col_3_bigint BIGINT,
    col_4_char_10_ CHAR(10),
    col_5_char_10_ CHAR(10),
    col_6_inet INET NOT NULL,
    col_7_varchar_255_ VARCHAR(255),
    col_8_bytea BYTEA NOT NULL,
    col_9_decimal_10_2_ DECIMAL(10,2),
    col_10_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_11_bigint BIGINT DEFAULT 0
);
CREATE INDEX idx_table_085_col9 ON table_085 (col_9_uuid);
CREATE INDEX idx_table_085_col8 ON table_085 (col_8_time);
ALTER TABLE table_085 ADD CONSTRAINT uk_table_085_col6 UNIQUE (col_6_decimal_10_2_);

CREATE TABLE IF NOT EXISTS table_013 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER NOT NULL,
    col_2_integer INTEGER,
    col_3_char_10_ CHAR(10) DEFAULT '',
    col_4_text TEXT,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_bigint BIGINT,
    col_7_real REAL NOT NULL,
    col_8_cidr CIDR
);
CREATE INDEX idx_table_013_col8_1 ON table_013 (col_8_cidr);
CREATE INDEX idx_table_013_col5_2 ON table_013 (col_5_decimal_10_2_);
CREATE INDEX idx_table_013_col5_3 ON table_013 (col_5_decimal_10_2_);
CREATE INDEX idx_table_013_col8_4 ON table_013 (col_8_cidr);
ALTER TABLE table_013 ADD CONSTRAINT uk_table_013_col8 UNIQUE (col_8_cidr);

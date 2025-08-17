CREATE TABLE IF NOT EXISTS table_033 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_text TEXT DEFAULT '',
    col_3_bigint BIGINT NOT NULL,
    col_4_uuid UUID,
    col_5_time TIME NOT NULL,
    col_6_char_10_ CHAR(10),
    col_7_real REAL NOT NULL,
    col_8_decimal_10_2_ DECIMAL(10,2) NOT NULL
);
CREATE INDEX idx_table_033_col5_1 ON table_033 (col_5_time);
CREATE INDEX idx_table_033_col8_2 ON table_033 (col_8_decimal_10_2_);
CREATE INDEX idx_table_033_col6_3 ON table_033 (col_6_char_10_);
CREATE INDEX idx_table_033_col3_4 ON table_033 (col_3_bigint);

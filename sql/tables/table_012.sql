CREATE TABLE IF NOT EXISTS table_012 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255) NOT NULL,
    col_2_char_10_ CHAR(10) DEFAULT '',
    col_3_char_10_ CHAR(10) NOT NULL,
    col_4_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_5_time TIME,
    col_6_boolean BOOLEAN,
    col_7_real REAL
);
CREATE INDEX idx_table_012_col6 ON table_012 (col_6_numeric_15_4_);
CREATE INDEX idx_table_012_col6 ON table_012 (col_6_date);
CREATE INDEX idx_table_012_col5 ON table_012 (col_5_boolean);
CREATE INDEX idx_table_012_col1 ON table_012 (col_1_double_precision);

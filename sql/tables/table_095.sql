CREATE TABLE IF NOT EXISTS table_095 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_decimal_10_2_ DECIMAL(10,2),
    col_2_char_10_ CHAR(10) DEFAULT '',
    col_3_char_10_ CHAR(10) NOT NULL DEFAULT '',
    col_4_integer INTEGER NOT NULL,
    col_5_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_6_date DATE NOT NULL,
    col_7_double_precision DOUBLE PRECISION
);
CREATE INDEX idx_table_095_col6 ON table_095 (col_6_text);
CREATE INDEX idx_table_095_col2 ON table_095 (col_2_decimal_10_2_);
CREATE INDEX idx_table_095_col7 ON table_095 (col_7_jsonb);

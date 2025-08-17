CREATE TABLE IF NOT EXISTS table_096 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_2_time TIME,
    col_3_decimal_10_2_ DECIMAL(10,2),
    col_4_macaddr MACADDR NOT NULL,
    col_5_integer INTEGER
);
CREATE INDEX idx_table_096_col5_1 ON table_096 (col_5_integer);
CREATE INDEX idx_table_096_col1_2 ON table_096 (col_1_numeric_15_4_);
CREATE INDEX idx_table_096_col1_3 ON table_096 (col_1_numeric_15_4_);
CREATE INDEX idx_table_096_col5_4 ON table_096 (col_5_integer);

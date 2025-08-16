CREATE TABLE IF NOT EXISTS table_034 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER,
    col_2_double_precision DOUBLE PRECISION,
    col_3_varchar_255_ VARCHAR(255) NOT NULL,
    col_4_cidr CIDR NOT NULL,
    col_5_json JSON DEFAULT '{}',
    col_6_char_10_ CHAR(10),
    col_7_date DATE,
    col_8_date DATE,
    col_9_uuid UUID NOT NULL,
    col_10_decimal_10_2_ DECIMAL(10,2)
);
CREATE INDEX idx_table_034_col7 ON table_034 (col_7_macaddr);
CREATE INDEX idx_table_034_col10 ON table_034 (col_10_date);
CREATE INDEX idx_table_034_col1 ON table_034 (col_1_real);

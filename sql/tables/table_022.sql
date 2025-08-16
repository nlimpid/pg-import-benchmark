CREATE TABLE IF NOT EXISTS table_022 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_cidr CIDR,
    col_2_time TIME NOT NULL,
    col_3_macaddr MACADDR NOT NULL,
    col_4_date DATE,
    col_5_time TIME,
    col_6_macaddr MACADDR,
    col_7_decimal_10_2_ DECIMAL(10,2),
    col_8_decimal_10_2_ DECIMAL(10,2),
    col_9_date DATE,
    col_10_integer INTEGER DEFAULT 0,
    col_11_double_precision DOUBLE PRECISION NOT NULL,
    col_12_decimal_10_2_ DECIMAL(10,2),
    col_13_bigint BIGINT,
    col_14_cidr CIDR NOT NULL,
    col_15_bytea BYTEA
);
CREATE INDEX idx_table_022_col7 ON table_022 (col_7_text);
CREATE INDEX idx_table_022_col8 ON table_022 (col_8_double_precision);
CREATE INDEX idx_table_022_col1 ON table_022 (col_1_time);
CREATE INDEX idx_table_022_col8 ON table_022 (col_8_json);

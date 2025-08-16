CREATE TABLE IF NOT EXISTS table_005 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_time TIME,
    col_4_double_precision DOUBLE PRECISION,
    col_5_macaddr MACADDR,
    col_6_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_7_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_8_cidr CIDR,
    col_9_bigint BIGINT NOT NULL
);
CREATE INDEX idx_table_005_col3 ON table_005 (col_3_date);
CREATE INDEX idx_table_005_col7 ON table_005 (col_7_integer);
CREATE INDEX idx_table_005_col4 ON table_005 (col_4_date);
CREATE INDEX idx_table_005_col1 ON table_005 (col_1_char_10_);

CREATE TABLE IF NOT EXISTS table_045 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4),
    col_2_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_3_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    col_4_inet INET NOT NULL,
    col_5_double_precision DOUBLE PRECISION NOT NULL,
    col_6_decimal_10_2_ DECIMAL(10,2),
    col_7_cidr CIDR,
    col_8_macaddr MACADDR,
    col_9_varchar_255_ VARCHAR(255)
);
CREATE INDEX idx_table_045_col4_1 ON table_045 (col_4_inet);
CREATE INDEX idx_table_045_col2_2 ON table_045 (col_2_numeric_15_4_);
CREATE INDEX idx_table_045_col9_3 ON table_045 (col_9_varchar_255_);

CREATE TABLE IF NOT EXISTS table_066 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_2_varchar_255_ VARCHAR(255),
    col_3_double_precision DOUBLE PRECISION NOT NULL,
    col_4_cidr CIDR,
    col_5_macaddr MACADDR,
    col_6_time TIME,
    col_7_time TIME,
    col_8_inet INET,
    col_9_decimal_10_2_ DECIMAL(10,2),
    col_10_integer INTEGER DEFAULT 0
);
CREATE INDEX idx_table_066_col9 ON table_066 (col_9_time);
CREATE INDEX idx_table_066_col3 ON table_066 (col_3_varchar_255_);
CREATE INDEX idx_table_066_col7 ON table_066 (col_7_macaddr);

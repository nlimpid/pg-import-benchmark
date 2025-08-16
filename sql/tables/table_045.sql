CREATE TABLE IF NOT EXISTS table_045 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER NOT NULL,
    col_2_inet INET,
    col_3_double_precision DOUBLE PRECISION NOT NULL,
    col_4_cidr CIDR,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_macaddr MACADDR NOT NULL
);
CREATE INDEX idx_table_045_col3 ON table_045 (col_3_real);
CREATE INDEX idx_table_045_col3 ON table_045 (col_3_timestamp);
CREATE INDEX idx_table_045_col6 ON table_045 (col_6_double_precision);
CREATE INDEX idx_table_045_col4 ON table_045 (col_4_decimal_10_2_);
ALTER TABLE table_045 ADD CONSTRAINT uk_table_045_col6 UNIQUE (col_6_time);

CREATE TABLE IF NOT EXISTS table_062 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_macaddr MACADDR,
    col_3_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_4_time TIME,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_double_precision DOUBLE PRECISION,
    col_7_real REAL,
    col_8_uuid UUID NOT NULL,
    col_9_macaddr MACADDR,
    col_10_cidr CIDR,
    col_11_inet INET NOT NULL
);
CREATE INDEX idx_table_062_col10_1 ON table_062 (col_10_cidr);
CREATE INDEX idx_table_062_col5_2 ON table_062 (col_5_decimal_10_2_);
CREATE INDEX idx_table_062_col3_3 ON table_062 (col_3_date);
ALTER TABLE table_062 ADD CONSTRAINT uk_table_062_col1 UNIQUE (col_1_date);

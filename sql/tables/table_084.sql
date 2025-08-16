CREATE TABLE IF NOT EXISTS table_084 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_cidr CIDR,
    col_2_timestamp TIMESTAMP,
    col_3_double_precision DOUBLE PRECISION,
    col_4_time TIME,
    col_5_double_precision DOUBLE PRECISION,
    col_6_inet INET,
    col_7_real REAL NOT NULL,
    col_8_macaddr MACADDR,
    col_9_char_10_ CHAR(10) DEFAULT ''
);
CREATE INDEX idx_table_084_col4 ON table_084 (col_4_time);
CREATE INDEX idx_table_084_col7 ON table_084 (col_7_bytea);
CREATE INDEX idx_table_084_col2 ON table_084 (col_2_boolean);
CREATE INDEX idx_table_084_col1 ON table_084 (col_1_timestamp);
ALTER TABLE table_084 ADD CONSTRAINT uk_table_084_col9 UNIQUE (col_9_numeric_15_4_);

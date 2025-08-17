CREATE TABLE IF NOT EXISTS table_006 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_uuid UUID,
    col_2_decimal_10_2_ DECIMAL(10,2),
    col_3_char_10_ CHAR(10) DEFAULT '',
    col_4_double_precision DOUBLE PRECISION,
    col_5_timestamp TIMESTAMP NOT NULL,
    col_6_cidr CIDR,
    col_7_real REAL,
    col_8_date DATE,
    col_9_date DATE NOT NULL,
    col_10_decimal_10_2_ DECIMAL(10,2)
);
CREATE INDEX idx_table_006_col9_1 ON table_006 (col_9_date);
CREATE INDEX idx_table_006_col6_2 ON table_006 (col_6_cidr);
CREATE INDEX idx_table_006_col10_3 ON table_006 (col_10_decimal_10_2_);

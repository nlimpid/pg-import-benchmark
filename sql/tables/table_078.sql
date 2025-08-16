CREATE TABLE IF NOT EXISTS table_078 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_real REAL,
    col_2_cidr CIDR,
    col_3_integer INTEGER,
    col_4_decimal_10_2_ DECIMAL(10,2),
    col_5_integer INTEGER NOT NULL,
    col_6_date DATE DEFAULT CURRENT_DATE,
    col_7_inet INET NOT NULL,
    col_8_integer INTEGER NOT NULL,
    col_9_double_precision DOUBLE PRECISION NOT NULL,
    col_10_macaddr MACADDR NOT NULL,
    col_11_time TIME,
    col_12_date DATE,
    col_13_inet INET,
    col_14_json JSON
);
CREATE INDEX idx_table_078_col13 ON table_078 (col_13_varchar_255_);
CREATE INDEX idx_table_078_col1 ON table_078 (col_1_bytea);

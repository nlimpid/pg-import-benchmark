CREATE TABLE IF NOT EXISTS table_048 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_decimal_10_2_ DECIMAL(10,2),
    col_2_inet INET,
    col_3_cidr CIDR NOT NULL,
    col_4_boolean BOOLEAN,
    col_5_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    col_6_text TEXT,
    col_7_real REAL,
    col_8_integer INTEGER NOT NULL DEFAULT 0,
    col_9_boolean BOOLEAN,
    col_10_macaddr MACADDR NOT NULL,
    col_11_double_precision DOUBLE PRECISION NOT NULL,
    col_12_timestamp TIMESTAMP,
    col_13_decimal_10_2_ DECIMAL(10,2),
    col_14_integer INTEGER
);
CREATE INDEX idx_table_048_col6 ON table_048 (col_6_bigint);
CREATE INDEX idx_table_048_col10 ON table_048 (col_10_cidr);

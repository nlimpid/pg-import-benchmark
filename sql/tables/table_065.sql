CREATE TABLE IF NOT EXISTS table_065 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET NOT NULL,
    col_2_text TEXT DEFAULT '',
    col_3_cidr CIDR,
    col_4_macaddr MACADDR NOT NULL,
    col_5_cidr CIDR,
    col_6_cidr CIDR NOT NULL,
    col_7_inet INET,
    col_8_bytea BYTEA NOT NULL,
    col_9_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_10_double_precision DOUBLE PRECISION,
    col_11_uuid UUID,
    col_12_bytea BYTEA,
    col_13_double_precision DOUBLE PRECISION NOT NULL,
    col_14_inet INET,
    col_15_decimal_10_2_ DECIMAL(10,2)
);
CREATE INDEX idx_table_065_col9_1 ON table_065 (col_9_date);
CREATE INDEX idx_table_065_col9_2 ON table_065 (col_9_date);

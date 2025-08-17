CREATE TABLE IF NOT EXISTS table_018 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_cidr CIDR,
    col_3_json JSON NOT NULL,
    col_4_cidr CIDR,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_bytea BYTEA NOT NULL,
    col_7_bigint BIGINT,
    col_8_double_precision DOUBLE PRECISION,
    col_9_uuid UUID,
    col_10_macaddr MACADDR,
    col_11_integer INTEGER DEFAULT 0,
    col_12_boolean BOOLEAN DEFAULT false,
    col_13_boolean BOOLEAN,
    col_14_integer INTEGER DEFAULT 0
);
CREATE INDEX idx_table_018_col1_1 ON table_018 (col_1_time);
CREATE INDEX idx_table_018_col8_2 ON table_018 (col_8_double_precision);

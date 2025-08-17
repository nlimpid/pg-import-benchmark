CREATE TABLE IF NOT EXISTS table_041 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE DEFAULT CURRENT_DATE,
    col_2_integer INTEGER DEFAULT 0,
    col_3_macaddr MACADDR,
    col_4_timestamp TIMESTAMP,
    col_5_double_precision DOUBLE PRECISION NOT NULL,
    col_6_text TEXT,
    col_7_cidr CIDR,
    col_8_date DATE,
    col_9_bigint BIGINT NOT NULL,
    col_10_time TIME NOT NULL,
    col_11_inet INET NOT NULL,
    col_12_macaddr MACADDR,
    col_13_uuid UUID NOT NULL,
    col_14_boolean BOOLEAN
);
CREATE INDEX idx_table_041_col13_1 ON table_041 (col_13_uuid);
CREATE INDEX idx_table_041_col13_2 ON table_041 (col_13_uuid);

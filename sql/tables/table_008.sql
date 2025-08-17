CREATE TABLE IF NOT EXISTS table_008 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_macaddr MACADDR,
    col_3_macaddr MACADDR,
    col_4_bytea BYTEA,
    col_5_macaddr MACADDR,
    col_6_integer INTEGER DEFAULT 0,
    col_7_bigint BIGINT,
    col_8_bytea BYTEA,
    col_9_bytea BYTEA,
    col_10_double_precision DOUBLE PRECISION,
    col_11_real REAL,
    col_12_real REAL
);
CREATE INDEX idx_table_008_col7_1 ON table_008 (col_7_bigint);
CREATE INDEX idx_table_008_col1_2 ON table_008 (col_1_inet);

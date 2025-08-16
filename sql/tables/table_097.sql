CREATE TABLE IF NOT EXISTS table_097 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT NOT NULL,
    col_2_macaddr MACADDR,
    col_3_text TEXT,
    col_4_numeric_15_4_ NUMERIC(15,4),
    col_5_bytea BYTEA,
    col_6_numeric_15_4_ NUMERIC(15,4),
    col_7_time TIME,
    col_8_inet INET,
    col_9_cidr CIDR
);
CREATE INDEX idx_table_097_col5 ON table_097 (col_5_numeric_15_4_);
CREATE INDEX idx_table_097_col6 ON table_097 (col_6_inet);
CREATE INDEX idx_table_097_col6 ON table_097 (col_6_bytea);

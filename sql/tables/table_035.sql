CREATE TABLE IF NOT EXISTS table_035 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_text TEXT,
    col_3_bigint BIGINT NOT NULL DEFAULT 0,
    col_4_date DATE,
    col_5_macaddr MACADDR,
    col_6_inet INET,
    col_7_bytea BYTEA,
    col_8_cidr CIDR
);
CREATE INDEX idx_table_035_col4 ON table_035 (col_4_text);
CREATE INDEX idx_table_035_col8 ON table_035 (col_8_jsonb);
CREATE INDEX idx_table_035_col4 ON table_035 (col_4_timestamp);
CREATE INDEX idx_table_035_col4 ON table_035 (col_4_numeric_15_4_);

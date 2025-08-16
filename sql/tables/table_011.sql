CREATE TABLE IF NOT EXISTS table_011 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT NOT NULL,
    col_2_integer INTEGER DEFAULT 0,
    col_3_double_precision DOUBLE PRECISION NOT NULL,
    col_4_jsonb JSONB,
    col_5_macaddr MACADDR,
    col_6_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_7_macaddr MACADDR,
    col_8_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_9_text TEXT,
    col_10_time TIME,
    col_11_macaddr MACADDR,
    col_12_cidr CIDR
);
CREATE INDEX idx_table_011_col5 ON table_011 (col_5_numeric_15_4_);
CREATE INDEX idx_table_011_col12 ON table_011 (col_12_inet);
CREATE INDEX idx_table_011_col6 ON table_011 (col_6_time);
CREATE INDEX idx_table_011_col5 ON table_011 (col_5_jsonb);

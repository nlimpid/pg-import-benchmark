CREATE TABLE IF NOT EXISTS table_026 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB,
    col_2_date DATE,
    col_3_date DATE,
    col_4_macaddr MACADDR,
    col_5_text TEXT,
    col_6_date DATE,
    col_7_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_8_bigint BIGINT,
    col_9_cidr CIDR NOT NULL,
    col_10_cidr CIDR NOT NULL,
    col_11_macaddr MACADDR,
    col_12_integer INTEGER DEFAULT 0,
    col_13_bigint BIGINT
);
CREATE INDEX idx_table_026_col9_1 ON table_026 (col_9_cidr);
CREATE INDEX idx_table_026_col8_2 ON table_026 (col_8_bigint);
CREATE INDEX idx_table_026_col10_3 ON table_026 (col_10_cidr);

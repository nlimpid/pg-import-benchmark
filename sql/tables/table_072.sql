CREATE TABLE IF NOT EXISTS table_072 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_text TEXT,
    col_3_text TEXT DEFAULT '',
    col_4_bigint BIGINT,
    col_5_integer INTEGER NOT NULL,
    col_6_time TIME NOT NULL,
    col_7_date DATE,
    col_8_bigint BIGINT DEFAULT 0,
    col_9_bigint BIGINT NOT NULL,
    col_10_cidr CIDR,
    col_11_timestamp TIMESTAMP NOT NULL
);
CREATE INDEX idx_table_072_col1_1 ON table_072 (col_1_macaddr);
CREATE INDEX idx_table_072_col8_2 ON table_072 (col_8_bigint);
CREATE INDEX idx_table_072_col9_3 ON table_072 (col_9_bigint);
CREATE INDEX idx_table_072_col8_4 ON table_072 (col_8_bigint);

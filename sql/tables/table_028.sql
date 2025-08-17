CREATE TABLE IF NOT EXISTS table_028 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_timestamp TIMESTAMP NOT NULL,
    col_3_macaddr MACADDR,
    col_4_text TEXT NOT NULL,
    col_5_boolean BOOLEAN NOT NULL DEFAULT false,
    col_6_integer INTEGER NOT NULL DEFAULT 0,
    col_7_json JSON NOT NULL DEFAULT '{}',
    col_8_jsonb JSONB NOT NULL,
    col_9_cidr CIDR,
    col_10_boolean BOOLEAN
);
CREATE INDEX idx_table_028_col2_1 ON table_028 (col_2_timestamp);
CREATE INDEX idx_table_028_col3_2 ON table_028 (col_3_macaddr);
CREATE INDEX idx_table_028_col3_3 ON table_028 (col_3_macaddr);
CREATE INDEX idx_table_028_col1_4 ON table_028 (col_1_macaddr);

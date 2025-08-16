CREATE TABLE IF NOT EXISTS table_052 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_uuid UUID NOT NULL,
    col_2_date DATE,
    col_3_bytea BYTEA,
    col_4_text TEXT NOT NULL,
    col_5_inet INET,
    col_6_jsonb JSONB DEFAULT '{}',
    col_7_json JSON,
    col_8_macaddr MACADDR NOT NULL,
    col_9_real REAL NOT NULL,
    col_10_text TEXT,
    col_11_json JSON
);
CREATE INDEX idx_table_052_col1 ON table_052 (col_1_uuid);
CREATE INDEX idx_table_052_col5 ON table_052 (col_5_char_10_);
CREATE INDEX idx_table_052_col1 ON table_052 (col_1_timestamp);
CREATE INDEX idx_table_052_col7 ON table_052 (col_7_cidr);

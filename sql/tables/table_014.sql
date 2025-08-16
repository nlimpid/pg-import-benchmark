CREATE TABLE IF NOT EXISTS table_014 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_cidr CIDR,
    col_2_jsonb JSONB,
    col_3_varchar_255_ VARCHAR(255) DEFAULT '',
    col_4_date DATE,
    col_5_macaddr MACADDR
);
CREATE INDEX idx_table_014_col2 ON table_014 (col_2_time);
CREATE INDEX idx_table_014_col3 ON table_014 (col_3_bytea);
CREATE INDEX idx_table_014_col2 ON table_014 (col_2_text);

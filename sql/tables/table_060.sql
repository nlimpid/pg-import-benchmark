CREATE TABLE IF NOT EXISTS table_060 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_timestamp TIMESTAMP,
    col_2_bigint BIGINT,
    col_3_jsonb JSONB NOT NULL,
    col_4_boolean BOOLEAN NOT NULL,
    col_5_cidr CIDR,
    col_6_time TIME,
    col_7_timestamp TIMESTAMP,
    col_8_json JSON DEFAULT '{}'
);
CREATE INDEX idx_table_060_col6_2 ON table_060 (col_6_time);
CREATE INDEX idx_table_060_col2_3 ON table_060 (col_2_bigint);
CREATE INDEX idx_table_060_col6_4 ON table_060 (col_6_time);

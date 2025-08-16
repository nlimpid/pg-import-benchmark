CREATE TABLE IF NOT EXISTS table_099 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN DEFAULT false,
    col_2_double_precision DOUBLE PRECISION,
    col_3_timestamp TIMESTAMP,
    col_4_json JSON,
    col_5_varchar_255_ VARCHAR(255) NOT NULL DEFAULT '',
    col_6_macaddr MACADDR,
    col_7_macaddr MACADDR NOT NULL
);
CREATE INDEX idx_table_099_col7 ON table_099 (col_7_time);
CREATE INDEX idx_table_099_col5 ON table_099 (col_5_jsonb);
CREATE INDEX idx_table_099_col4 ON table_099 (col_4_cidr);
CREATE INDEX idx_table_099_col4 ON table_099 (col_4_boolean);

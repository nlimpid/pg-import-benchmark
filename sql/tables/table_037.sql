CREATE TABLE IF NOT EXISTS table_037 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET NOT NULL,
    col_2_jsonb JSONB,
    col_3_cidr CIDR,
    col_4_bigint BIGINT,
    col_5_macaddr MACADDR,
    col_6_bytea BYTEA,
    col_7_integer INTEGER DEFAULT 0,
    col_8_inet INET,
    col_9_bigint BIGINT NOT NULL,
    col_10_real REAL NOT NULL,
    col_11_time TIME NOT NULL,
    col_12_time TIME,
    col_13_json JSON
);
CREATE INDEX idx_table_037_col12 ON table_037 (col_12_jsonb);
CREATE INDEX idx_table_037_col5 ON table_037 (col_5_real);

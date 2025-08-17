CREATE TABLE IF NOT EXISTS table_079 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255),
    col_2_uuid UUID,
    col_3_jsonb JSONB NOT NULL,
    col_4_bytea BYTEA NOT NULL,
    col_5_json JSON NOT NULL,
    col_6_varchar_255_ VARCHAR(255),
    col_7_real REAL,
    col_8_time TIME,
    col_9_time TIME,
    col_10_inet INET NOT NULL,
    col_11_cidr CIDR,
    col_12_macaddr MACADDR NOT NULL,
    col_13_numeric_15_4_ NUMERIC(15,4),
    col_14_varchar_255_ VARCHAR(255),
    col_15_boolean BOOLEAN NOT NULL DEFAULT false
);
CREATE INDEX idx_table_079_col4_1 ON table_079 (col_4_bytea);
CREATE INDEX idx_table_079_col11_2 ON table_079 (col_11_cidr);

CREATE TABLE IF NOT EXISTS table_075 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_json JSON NOT NULL DEFAULT '{}',
    col_3_boolean BOOLEAN,
    col_4_jsonb JSONB,
    col_5_double_precision DOUBLE PRECISION NOT NULL,
    col_6_bytea BYTEA
);
CREATE INDEX idx_table_075_col4 ON table_075 (col_4_bigint);
CREATE INDEX idx_table_075_col6 ON table_075 (col_6_bigint);
CREATE INDEX idx_table_075_col2 ON table_075 (col_2_integer);
CREATE INDEX idx_table_075_col1 ON table_075 (col_1_inet);

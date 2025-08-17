CREATE TABLE IF NOT EXISTS table_056 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_macaddr MACADDR,
    col_3_macaddr MACADDR NOT NULL,
    col_4_json JSON NOT NULL DEFAULT '{}',
    col_5_timestamp TIMESTAMP NOT NULL,
    col_6_double_precision DOUBLE PRECISION,
    col_7_macaddr MACADDR,
    col_8_text TEXT NOT NULL
);
CREATE INDEX idx_table_056_col2_1 ON table_056 (col_2_macaddr);
CREATE INDEX idx_table_056_col7_2 ON table_056 (col_7_macaddr);
CREATE INDEX idx_table_056_col7_3 ON table_056 (col_7_macaddr);

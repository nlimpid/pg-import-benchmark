CREATE TABLE IF NOT EXISTS table_093 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_timestamp TIMESTAMP,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_json JSON DEFAULT '{}',
    col_4_real REAL,
    col_5_macaddr MACADDR NOT NULL
);
CREATE INDEX idx_table_093_col3 ON table_093 (col_3_cidr);
CREATE INDEX idx_table_093_col4 ON table_093 (col_4_numeric_15_4_);

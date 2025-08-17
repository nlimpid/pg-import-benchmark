CREATE TABLE IF NOT EXISTS table_030 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA NOT NULL,
    col_2_text TEXT DEFAULT '',
    col_3_date DATE DEFAULT CURRENT_DATE,
    col_4_cidr CIDR,
    col_5_inet INET,
    col_6_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_7_timestamp TIMESTAMP,
    col_8_bigint BIGINT NOT NULL DEFAULT 0,
    col_9_real REAL,
    col_10_integer INTEGER NOT NULL DEFAULT 0,
    col_11_uuid UUID NOT NULL,
    col_12_inet INET
);
CREATE INDEX idx_table_030_col2_1 ON table_030 (col_2_text);
CREATE INDEX idx_table_030_col9_2 ON table_030 (col_9_real);
CREATE INDEX idx_table_030_col10_3 ON table_030 (col_10_integer);

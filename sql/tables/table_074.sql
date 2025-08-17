CREATE TABLE IF NOT EXISTS table_074 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_real REAL NOT NULL,
    col_3_boolean BOOLEAN,
    col_4_double_precision DOUBLE PRECISION,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_real REAL,
    col_7_cidr CIDR,
    col_8_bytea BYTEA,
    col_9_uuid UUID,
    col_10_integer INTEGER NOT NULL DEFAULT 0,
    col_11_bigint BIGINT
);
CREATE INDEX idx_table_074_col11_1 ON table_074 (col_11_bigint);
CREATE INDEX idx_table_074_col2_2 ON table_074 (col_2_real);
CREATE INDEX idx_table_074_col7_3 ON table_074 (col_7_cidr);
CREATE INDEX idx_table_074_col10_4 ON table_074 (col_10_integer);

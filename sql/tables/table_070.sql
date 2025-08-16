CREATE TABLE IF NOT EXISTS table_070 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_double_precision DOUBLE PRECISION NOT NULL,
    col_4_bytea BYTEA NOT NULL,
    col_5_real REAL NOT NULL,
    col_6_boolean BOOLEAN
);
CREATE INDEX idx_table_070_col6 ON table_070 (col_6_integer);
CREATE INDEX idx_table_070_col1 ON table_070 (col_1_uuid);
CREATE INDEX idx_table_070_col6 ON table_070 (col_6_boolean);

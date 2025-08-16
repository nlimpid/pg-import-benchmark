CREATE TABLE IF NOT EXISTS table_029 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_real REAL NOT NULL,
    col_2_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_3_bigint BIGINT,
    col_4_real REAL NOT NULL,
    col_5_bytea BYTEA,
    col_6_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    col_7_boolean BOOLEAN DEFAULT false,
    col_8_timestamp TIMESTAMP NOT NULL,
    col_9_numeric_15_4_ NUMERIC(15,4),
    col_10_jsonb JSONB NOT NULL DEFAULT '{}',
    col_11_integer INTEGER DEFAULT 0,
    col_12_timestamp TIMESTAMP NOT NULL
);
CREATE INDEX idx_table_029_col12 ON table_029 (col_12_decimal_10_2_);
CREATE INDEX idx_table_029_col11 ON table_029 (col_11_inet);
CREATE INDEX idx_table_029_col6 ON table_029 (col_6_boolean);
CREATE INDEX idx_table_029_col6 ON table_029 (col_6_macaddr);

CREATE TABLE IF NOT EXISTS table_092 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_double_precision DOUBLE PRECISION,
    col_3_cidr CIDR,
    col_4_boolean BOOLEAN NOT NULL,
    col_5_text TEXT NOT NULL,
    col_6_cidr CIDR,
    col_7_boolean BOOLEAN NOT NULL,
    col_8_double_precision DOUBLE PRECISION NOT NULL,
    col_9_bytea BYTEA,
    col_10_decimal_10_2_ DECIMAL(10,2),
    col_11_jsonb JSONB NOT NULL,
    col_12_decimal_10_2_ DECIMAL(10,2),
    col_13_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_092_col3 ON table_092 (col_3_timestamp);
CREATE INDEX idx_table_092_col5 ON table_092 (col_5_inet);

CREATE TABLE IF NOT EXISTS table_063 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_bytea BYTEA,
    col_3_jsonb JSONB,
    col_4_time TIME NOT NULL,
    col_5_timestamp TIMESTAMP,
    col_6_boolean BOOLEAN,
    col_7_double_precision DOUBLE PRECISION,
    col_8_macaddr MACADDR NOT NULL,
    col_9_bytea BYTEA NOT NULL,
    col_10_uuid UUID NOT NULL,
    col_11_date DATE DEFAULT CURRENT_DATE,
    col_12_real REAL,
    col_13_decimal_10_2_ DECIMAL(10,2),
    col_14_boolean BOOLEAN NOT NULL
);
CREATE INDEX idx_table_063_col11_1 ON table_063 (col_11_date);
CREATE INDEX idx_table_063_col4_2 ON table_063 (col_4_time);
CREATE INDEX idx_table_063_col12_3 ON table_063 (col_12_real);

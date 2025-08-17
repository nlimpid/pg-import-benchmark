CREATE TABLE IF NOT EXISTS table_092 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION NOT NULL,
    col_2_cidr CIDR,
    col_3_boolean BOOLEAN,
    col_4_real REAL NOT NULL,
    col_5_boolean BOOLEAN,
    col_6_bigint BIGINT NOT NULL,
    col_7_decimal_10_2_ DECIMAL(10,2),
    col_8_real REAL,
    col_9_double_precision DOUBLE PRECISION NOT NULL,
    col_10_numeric_15_4_ NUMERIC(15,4),
    col_11_json JSON DEFAULT '{}',
    col_12_cidr CIDR,
    col_13_jsonb JSONB,
    col_14_double_precision DOUBLE PRECISION NOT NULL,
    col_15_cidr CIDR
);
CREATE INDEX idx_table_092_col8_1 ON table_092 (col_8_real);
CREATE INDEX idx_table_092_col12_2 ON table_092 (col_12_cidr);
CREATE INDEX idx_table_092_col13_3_gin ON table_092 USING GIN (col_13_jsonb);

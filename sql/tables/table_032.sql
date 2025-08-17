CREATE TABLE IF NOT EXISTS table_032 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_2_boolean BOOLEAN DEFAULT false,
    col_3_double_precision DOUBLE PRECISION NOT NULL,
    col_4_boolean BOOLEAN,
    col_5_char_10_ CHAR(10),
    col_6_jsonb JSONB NOT NULL,
    col_7_macaddr MACADDR,
    col_8_decimal_10_2_ DECIMAL(10,2),
    col_9_bytea BYTEA NOT NULL,
    col_10_bytea BYTEA,
    col_11_json JSON,
    col_12_date DATE NOT NULL,
    col_13_jsonb JSONB NOT NULL,
    col_14_cidr CIDR,
    col_15_cidr CIDR
);
CREATE INDEX idx_table_032_col13_1_gin ON table_032 USING GIN (col_13_jsonb);
CREATE INDEX idx_table_032_col13_2_gin ON table_032 USING GIN (col_13_jsonb);
CREATE INDEX idx_table_032_col2_3 ON table_032 (col_2_boolean);
CREATE INDEX idx_table_032_col5_4 ON table_032 (col_5_char_10_);

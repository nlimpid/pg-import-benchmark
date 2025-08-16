CREATE TABLE IF NOT EXISTS table_049 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_real REAL,
    col_2_decimal_10_2_ DECIMAL(10,2),
    col_3_integer INTEGER,
    col_4_uuid UUID,
    col_5_json JSON,
    col_6_macaddr MACADDR,
    col_7_uuid UUID,
    col_8_jsonb JSONB NOT NULL,
    col_9_char_10_ CHAR(10),
    col_10_bigint BIGINT NOT NULL,
    col_11_jsonb JSONB,
    col_12_bytea BYTEA NOT NULL,
    col_13_date DATE,
    col_14_inet INET NOT NULL
);
CREATE INDEX idx_table_049_col1 ON table_049 (col_1_numeric_15_4_);
CREATE INDEX idx_table_049_col8 ON table_049 (col_8_decimal_10_2_);
CREATE INDEX idx_table_049_col3 ON table_049 (col_3_inet);
CREATE INDEX idx_table_049_col12 ON table_049 (col_12_bytea);

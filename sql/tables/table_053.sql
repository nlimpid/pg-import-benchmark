CREATE TABLE IF NOT EXISTS table_053 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_char_10_ CHAR(10) NOT NULL DEFAULT '',
    col_3_integer INTEGER,
    col_4_numeric_15_4_ NUMERIC(15,4),
    col_5_integer INTEGER,
    col_6_char_10_ CHAR(10),
    col_7_integer INTEGER,
    col_8_cidr CIDR,
    col_9_bytea BYTEA NOT NULL,
    col_10_time TIME NOT NULL,
    col_11_macaddr MACADDR NOT NULL,
    col_12_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_13_date DATE,
    col_14_uuid UUID,
    col_15_real REAL
);
CREATE INDEX idx_table_053_col3 ON table_053 (col_3_jsonb);
CREATE INDEX idx_table_053_col1 ON table_053 (col_1_integer);
CREATE INDEX idx_table_053_col11 ON table_053 (col_11_varchar_255_);
CREATE INDEX idx_table_053_col12 ON table_053 (col_12_boolean);

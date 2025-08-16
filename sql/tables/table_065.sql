CREATE TABLE IF NOT EXISTS table_065 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_boolean BOOLEAN DEFAULT false,
    col_3_decimal_10_2_ DECIMAL(10,2),
    col_4_json JSON DEFAULT '{}',
    col_5_inet INET,
    col_6_uuid UUID,
    col_7_numeric_15_4_ NUMERIC(15,4),
    col_8_double_precision DOUBLE PRECISION,
    col_9_boolean BOOLEAN NOT NULL,
    col_10_char_10_ CHAR(10),
    col_11_char_10_ CHAR(10),
    col_12_double_precision DOUBLE PRECISION,
    col_13_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_065_col9 ON table_065 (col_9_cidr);
CREATE INDEX idx_table_065_col2 ON table_065 (col_2_char_10_);
CREATE INDEX idx_table_065_col10 ON table_065 (col_10_varchar_255_);
CREATE INDEX idx_table_065_col9 ON table_065 (col_9_jsonb);

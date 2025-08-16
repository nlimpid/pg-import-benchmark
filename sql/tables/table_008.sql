CREATE TABLE IF NOT EXISTS table_008 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10) NOT NULL DEFAULT '',
    col_2_text TEXT DEFAULT '',
    col_3_inet INET NOT NULL,
    col_4_time TIME,
    col_5_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_6_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_7_text TEXT DEFAULT '',
    col_8_numeric_15_4_ NUMERIC(15,4),
    col_9_jsonb JSONB DEFAULT '{}',
    col_10_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_11_bytea BYTEA,
    col_12_numeric_15_4_ NUMERIC(15,4),
    col_13_json JSON DEFAULT '{}',
    col_14_double_precision DOUBLE PRECISION NOT NULL
);
CREATE INDEX idx_table_008_col6 ON table_008 (col_6_double_precision);
CREATE INDEX idx_table_008_col2 ON table_008 (col_2_date);
CREATE INDEX idx_table_008_col11 ON table_008 (col_11_boolean);
CREATE INDEX idx_table_008_col4 ON table_008 (col_4_inet);

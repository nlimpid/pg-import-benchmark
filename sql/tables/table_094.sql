CREATE TABLE IF NOT EXISTS table_094 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_timestamp TIMESTAMP NOT NULL,
    col_2_time TIME,
    col_3_decimal_10_2_ DECIMAL(10,2),
    col_4_time TIME,
    col_5_text TEXT NOT NULL DEFAULT '',
    col_6_jsonb JSONB DEFAULT '{}',
    col_7_jsonb JSONB DEFAULT '{}',
    col_8_char_10_ CHAR(10),
    col_9_numeric_15_4_ NUMERIC(15,4),
    col_10_bytea BYTEA NOT NULL,
    col_11_numeric_15_4_ NUMERIC(15,4),
    col_12_uuid UUID
);
CREATE INDEX idx_table_094_col7 ON table_094 (col_7_date);
CREATE INDEX idx_table_094_col11 ON table_094 (col_11_jsonb);
CREATE INDEX idx_table_094_col8 ON table_094 (col_8_cidr);

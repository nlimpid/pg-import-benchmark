CREATE TABLE IF NOT EXISTS table_085 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON DEFAULT '{}',
    col_2_char_10_ CHAR(10),
    col_3_real REAL,
    col_4_cidr CIDR NOT NULL,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_real REAL NOT NULL,
    col_7_text TEXT NOT NULL,
    col_8_double_precision DOUBLE PRECISION NOT NULL,
    col_9_jsonb JSONB NOT NULL DEFAULT '{}',
    col_10_jsonb JSONB,
    col_11_timestamp TIMESTAMP
);
CREATE INDEX idx_table_085_col3_1 ON table_085 (col_3_real);
CREATE INDEX idx_table_085_col8_2 ON table_085 (col_8_double_precision);

CREATE TABLE IF NOT EXISTS table_007 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT,
    col_2_timestamp TIMESTAMP,
    col_3_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    col_4_uuid UUID,
    col_5_double_precision DOUBLE PRECISION,
    col_6_double_precision DOUBLE PRECISION,
    col_7_timestamp TIMESTAMP,
    col_8_boolean BOOLEAN DEFAULT false,
    col_9_integer INTEGER DEFAULT 0,
    col_10_text TEXT DEFAULT '',
    col_11_text TEXT,
    col_12_jsonb JSONB,
    col_13_double_precision DOUBLE PRECISION
);
CREATE INDEX idx_table_007_col7_1 ON table_007 (col_7_timestamp);
CREATE INDEX idx_table_007_col11_2 ON table_007 (col_11_text);
CREATE INDEX idx_table_007_col2_3 ON table_007 (col_2_timestamp);
CREATE INDEX idx_table_007_col2_4 ON table_007 (col_2_timestamp);

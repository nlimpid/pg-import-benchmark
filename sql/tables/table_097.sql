CREATE TABLE IF NOT EXISTS table_097 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_real REAL,
    col_2_bytea BYTEA,
    col_3_boolean BOOLEAN DEFAULT false,
    col_4_jsonb JSONB,
    col_5_integer INTEGER DEFAULT 0
);
CREATE INDEX idx_table_097_col1_1 ON table_097 (col_1_real);
CREATE INDEX idx_table_097_col3_2 ON table_097 (col_3_boolean);
CREATE INDEX idx_table_097_col5_3 ON table_097 (col_5_integer);
CREATE INDEX idx_table_097_col3_4 ON table_097 (col_3_boolean);

CREATE TABLE IF NOT EXISTS table_077 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT NOT NULL,
    col_2_integer INTEGER NOT NULL,
    col_3_double_precision DOUBLE PRECISION,
    col_4_varchar_255_ VARCHAR(255),
    col_5_real REAL
);
CREATE INDEX idx_table_077_col5 ON table_077 (col_5_varchar_255_);
CREATE INDEX idx_table_077_col2 ON table_077 (col_2_uuid);
CREATE INDEX idx_table_077_col4 ON table_077 (col_4_jsonb);

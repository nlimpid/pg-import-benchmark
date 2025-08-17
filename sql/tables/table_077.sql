CREATE TABLE IF NOT EXISTS table_077 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON,
    col_2_timestamp TIMESTAMP,
    col_3_text TEXT,
    col_4_real REAL NOT NULL,
    col_5_boolean BOOLEAN DEFAULT false,
    col_6_uuid UUID NOT NULL
);
CREATE INDEX idx_table_077_col6_1 ON table_077 (col_6_uuid);
CREATE INDEX idx_table_077_col2_3 ON table_077 (col_2_timestamp);
CREATE INDEX idx_table_077_col6_4 ON table_077 (col_6_uuid);

CREATE TABLE IF NOT EXISTS table_039 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER,
    col_2_integer INTEGER,
    col_3_char_10_ CHAR(10),
    col_4_uuid UUID,
    col_5_bytea BYTEA NOT NULL,
    col_6_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_table_039_col1 ON table_039 (col_1_text);
CREATE INDEX idx_table_039_col4 ON table_039 (col_4_json);
CREATE INDEX idx_table_039_col1 ON table_039 (col_1_cidr);

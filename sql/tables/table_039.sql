CREATE TABLE IF NOT EXISTS table_039 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON DEFAULT '{}',
    col_2_time TIME NOT NULL,
    col_3_bytea BYTEA,
    col_4_text TEXT,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_char_10_ CHAR(10) NOT NULL
);
CREATE INDEX idx_table_039_col3_3 ON table_039 (col_3_bytea);

CREATE TABLE IF NOT EXISTS table_010 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255) DEFAULT '',
    col_2_bytea BYTEA,
    col_3_bytea BYTEA,
    col_4_integer INTEGER,
    col_5_integer INTEGER,
    col_6_numeric_15_4_ NUMERIC(15,4),
    col_7_real REAL NOT NULL
);
CREATE INDEX idx_table_010_col1_1 ON table_010 (col_1_varchar_255_);
CREATE INDEX idx_table_010_col4_2 ON table_010 (col_4_integer);
CREATE INDEX idx_table_010_col1_3 ON table_010 (col_1_varchar_255_);
CREATE INDEX idx_table_010_col5_4 ON table_010 (col_5_integer);

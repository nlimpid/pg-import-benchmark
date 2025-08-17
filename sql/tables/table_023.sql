CREATE TABLE IF NOT EXISTS table_023 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR NOT NULL,
    col_2_char_10_ CHAR(10) DEFAULT '',
    col_3_numeric_15_4_ NUMERIC(15,4),
    col_4_bytea BYTEA,
    col_5_numeric_15_4_ NUMERIC(15,4) NOT NULL
);
CREATE INDEX idx_table_023_col3_1 ON table_023 (col_3_numeric_15_4_);
CREATE INDEX idx_table_023_col2_2 ON table_023 (col_2_char_10_);
CREATE INDEX idx_table_023_col5_3 ON table_023 (col_5_numeric_15_4_);

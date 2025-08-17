CREATE TABLE IF NOT EXISTS table_088 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN DEFAULT false,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_bytea BYTEA,
    col_4_inet INET,
    col_5_char_10_ CHAR(10) NOT NULL
);
CREATE INDEX idx_table_088_col5_1 ON table_088 (col_5_char_10_);
CREATE INDEX idx_table_088_col4_2 ON table_088 (col_4_inet);
CREATE INDEX idx_table_088_col5_3 ON table_088 (col_5_char_10_);
CREATE INDEX idx_table_088_col5_4 ON table_088 (col_5_char_10_);

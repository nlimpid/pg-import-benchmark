CREATE TABLE IF NOT EXISTS table_067 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10),
    col_2_double_precision DOUBLE PRECISION,
    col_3_integer INTEGER,
    col_4_json JSON,
    col_5_bigint BIGINT,
    col_6_boolean BOOLEAN
);
CREATE INDEX idx_table_067_col2_1 ON table_067 (col_2_double_precision);
CREATE INDEX idx_table_067_col3_2 ON table_067 (col_3_integer);
CREATE INDEX idx_table_067_col3_3 ON table_067 (col_3_integer);
CREATE INDEX idx_table_067_col3_4 ON table_067 (col_3_integer);

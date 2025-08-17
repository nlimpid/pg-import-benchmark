CREATE TABLE IF NOT EXISTS table_053 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_text TEXT,
    col_4_macaddr MACADDR,
    col_5_date DATE,
    col_6_char_10_ CHAR(10) DEFAULT '',
    col_7_macaddr MACADDR
);
CREATE INDEX idx_table_053_col5_1 ON table_053 (col_5_date);
CREATE INDEX idx_table_053_col6_2 ON table_053 (col_6_char_10_);

CREATE TABLE IF NOT EXISTS table_080 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4),
    col_2_inet INET,
    col_3_boolean BOOLEAN DEFAULT false,
    col_4_text TEXT,
    col_5_char_10_ CHAR(10)
);
CREATE INDEX idx_table_080_col3_1 ON table_080 (col_3_boolean);
CREATE INDEX idx_table_080_col4_2 ON table_080 (col_4_text);
CREATE INDEX idx_table_080_col3_3 ON table_080 (col_3_boolean);
CREATE INDEX idx_table_080_col2_4 ON table_080 (col_2_inet);

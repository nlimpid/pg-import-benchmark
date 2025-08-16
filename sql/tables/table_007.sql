CREATE TABLE IF NOT EXISTS table_007 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_boolean BOOLEAN,
    col_3_date DATE NOT NULL,
    col_4_real REAL NOT NULL,
    col_5_inet INET
);
CREATE INDEX idx_table_007_col4 ON table_007 (col_4_inet);
CREATE INDEX idx_table_007_col3 ON table_007 (col_3_decimal_10_2_);
CREATE INDEX idx_table_007_col3 ON table_007 (col_3_macaddr);

CREATE TABLE IF NOT EXISTS table_010 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_decimal_10_2_ DECIMAL(10,2),
    col_2_timestamp TIMESTAMP NOT NULL,
    col_3_inet INET NOT NULL,
    col_4_macaddr MACADDR,
    col_5_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_010_col5 ON table_010 (col_5_integer);
CREATE INDEX idx_table_010_col1 ON table_010 (col_1_varchar_255_);

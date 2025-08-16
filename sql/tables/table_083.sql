CREATE TABLE IF NOT EXISTS table_083 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_real REAL NOT NULL,
    col_2_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_3_date DATE DEFAULT CURRENT_DATE,
    col_4_bytea BYTEA,
    col_5_cidr CIDR,
    col_6_bigint BIGINT,
    col_7_inet INET NOT NULL
);
CREATE INDEX idx_table_083_col6 ON table_083 (col_6_time);
CREATE INDEX idx_table_083_col2 ON table_083 (col_2_macaddr);
CREATE INDEX idx_table_083_col5 ON table_083 (col_5_real);

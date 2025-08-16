CREATE TABLE IF NOT EXISTS table_080 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_macaddr MACADDR,
    col_3_date DATE,
    col_4_boolean BOOLEAN NOT NULL,
    col_5_inet INET NOT NULL
);
CREATE INDEX idx_table_080_col4 ON table_080 (col_4_timestamp);
CREATE INDEX idx_table_080_col2 ON table_080 (col_2_boolean);

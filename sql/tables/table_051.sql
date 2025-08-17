CREATE TABLE IF NOT EXISTS table_051 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_timestamp TIMESTAMP,
    col_2_inet INET NOT NULL,
    col_3_integer INTEGER NOT NULL,
    col_4_macaddr MACADDR,
    col_5_uuid UUID,
    col_6_macaddr MACADDR
);
CREATE INDEX idx_table_051_col4_1 ON table_051 (col_4_macaddr);
CREATE INDEX idx_table_051_col5_2 ON table_051 (col_5_uuid);
CREATE INDEX idx_table_051_col6_3 ON table_051 (col_6_macaddr);
CREATE INDEX idx_table_051_col5_4 ON table_051 (col_5_uuid);

CREATE TABLE IF NOT EXISTS table_073 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME NOT NULL,
    col_2_bytea BYTEA,
    col_3_boolean BOOLEAN,
    col_4_inet INET,
    col_5_bytea BYTEA NOT NULL,
    col_6_uuid UUID NOT NULL
);
CREATE INDEX idx_table_073_col3_1 ON table_073 (col_3_boolean);
CREATE INDEX idx_table_073_col4_2 ON table_073 (col_4_inet);
CREATE INDEX idx_table_073_col6_3 ON table_073 (col_6_uuid);

CREATE TABLE IF NOT EXISTS table_057 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME NOT NULL,
    col_2_integer INTEGER,
    col_3_uuid UUID NOT NULL,
    col_4_double_precision DOUBLE PRECISION,
    col_5_bytea BYTEA,
    col_6_macaddr MACADDR NOT NULL,
    col_7_time TIME NOT NULL
);
CREATE INDEX idx_table_057_col6 ON table_057 (col_6_uuid);
CREATE INDEX idx_table_057_col1 ON table_057 (col_1_jsonb);

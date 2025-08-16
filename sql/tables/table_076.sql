CREATE TABLE IF NOT EXISTS table_076 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME NOT NULL,
    col_2_bytea BYTEA,
    col_3_boolean BOOLEAN NOT NULL,
    col_4_macaddr MACADDR,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_uuid UUID,
    col_7_timestamp TIMESTAMP NOT NULL
);
CREATE INDEX idx_table_076_col4 ON table_076 (col_4_cidr);
CREATE INDEX idx_table_076_col3 ON table_076 (col_3_date);
CREATE INDEX idx_table_076_col3 ON table_076 (col_3_jsonb);

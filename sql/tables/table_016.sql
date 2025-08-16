CREATE TABLE IF NOT EXISTS table_016 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_date DATE NOT NULL,
    col_3_bytea BYTEA,
    col_4_bigint BIGINT NOT NULL,
    col_5_inet INET NOT NULL,
    col_6_macaddr MACADDR,
    col_7_inet INET,
    col_8_uuid UUID NOT NULL,
    col_9_bytea BYTEA,
    col_10_double_precision DOUBLE PRECISION NOT NULL,
    col_11_cidr CIDR
);
CREATE INDEX idx_table_016_col3 ON table_016 (col_3_time);
CREATE INDEX idx_table_016_col1 ON table_016 (col_1_date);
CREATE INDEX idx_table_016_col3 ON table_016 (col_3_boolean);
CREATE INDEX idx_table_016_col6 ON table_016 (col_6_timestamp);
ALTER TABLE table_016 ADD CONSTRAINT uk_table_016_col6 UNIQUE (col_6_cidr);

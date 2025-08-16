CREATE TABLE IF NOT EXISTS table_030 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN NOT NULL DEFAULT false,
    col_2_timestamp TIMESTAMP,
    col_3_bytea BYTEA,
    col_4_text TEXT,
    col_5_boolean BOOLEAN NOT NULL,
    col_6_inet INET
);
CREATE INDEX idx_table_030_col4 ON table_030 (col_4_cidr);
CREATE INDEX idx_table_030_col5 ON table_030 (col_5_bigint);
ALTER TABLE table_030 ADD CONSTRAINT uk_table_030_col5 UNIQUE (col_5_integer);

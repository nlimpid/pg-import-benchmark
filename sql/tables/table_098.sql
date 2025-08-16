CREATE TABLE IF NOT EXISTS table_098 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_cidr CIDR,
    col_3_bytea BYTEA,
    col_4_varchar_255_ VARCHAR(255),
    col_5_integer INTEGER NOT NULL DEFAULT 0,
    col_6_inet INET
);
CREATE INDEX idx_table_098_col4 ON table_098 (col_4_real);
CREATE INDEX idx_table_098_col3 ON table_098 (col_3_bigint);
CREATE INDEX idx_table_098_col4 ON table_098 (col_4_char_10_);

CREATE TABLE IF NOT EXISTS table_034 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10),
    col_2_double_precision DOUBLE PRECISION NOT NULL,
    col_3_bytea BYTEA NOT NULL,
    col_4_bigint BIGINT NOT NULL,
    col_5_inet INET,
    col_6_cidr CIDR NOT NULL,
    col_7_inet INET
);
CREATE INDEX idx_table_034_col4_1 ON table_034 (col_4_bigint);
CREATE INDEX idx_table_034_col5_2 ON table_034 (col_5_inet);
CREATE INDEX idx_table_034_col2_3 ON table_034 (col_2_double_precision);

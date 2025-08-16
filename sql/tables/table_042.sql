CREATE TABLE IF NOT EXISTS table_042 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255),
    col_2_uuid UUID NOT NULL,
    col_3_double_precision DOUBLE PRECISION,
    col_4_timestamp TIMESTAMP NOT NULL,
    col_5_bigint BIGINT NOT NULL,
    col_6_bigint BIGINT
);
CREATE INDEX idx_table_042_col3 ON table_042 (col_3_varchar_255_);
CREATE INDEX idx_table_042_col1 ON table_042 (col_1_cidr);
CREATE INDEX idx_table_042_col5 ON table_042 (col_5_inet);
CREATE INDEX idx_table_042_col6 ON table_042 (col_6_real);

CREATE TABLE IF NOT EXISTS table_021 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_timestamp TIMESTAMP,
    col_3_bigint BIGINT NOT NULL DEFAULT 0,
    col_4_uuid UUID,
    col_5_uuid UUID,
    col_6_cidr CIDR
);
CREATE INDEX idx_table_021_col6_1 ON table_021 (col_6_cidr);
CREATE INDEX idx_table_021_col1_2 ON table_021 (col_1_double_precision);
CREATE INDEX idx_table_021_col1_3 ON table_021 (col_1_double_precision);

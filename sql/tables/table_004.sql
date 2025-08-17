CREATE TABLE IF NOT EXISTS table_004 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_real REAL,
    col_3_real REAL,
    col_4_json JSON,
    col_5_time TIME,
    col_6_uuid UUID,
    col_7_boolean BOOLEAN NOT NULL DEFAULT false,
    col_8_inet INET,
    col_9_json JSON NOT NULL,
    col_10_cidr CIDR,
    col_11_integer INTEGER,
    col_12_real REAL
);
CREATE INDEX idx_table_004_col8_1 ON table_004 (col_8_inet);
CREATE INDEX idx_table_004_col2_2 ON table_004 (col_2_real);
CREATE INDEX idx_table_004_col2_3 ON table_004 (col_2_real);

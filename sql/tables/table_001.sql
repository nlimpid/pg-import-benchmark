CREATE TABLE IF NOT EXISTS table_001 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME NOT NULL,
    col_2_timestamp TIMESTAMP,
    col_3_json JSON,
    col_4_cidr CIDR,
    col_5_boolean BOOLEAN DEFAULT false,
    col_6_timestamp TIMESTAMP,
    col_7_double_precision DOUBLE PRECISION,
    col_8_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_001_col5 ON table_001 (col_5_uuid);
CREATE INDEX idx_table_001_col2 ON table_001 (col_2_integer);
ALTER TABLE table_001 ADD CONSTRAINT uk_table_001_col5 UNIQUE (col_5_numeric_15_4_);

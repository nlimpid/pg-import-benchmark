CREATE TABLE IF NOT EXISTS table_069 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN NOT NULL DEFAULT false,
    col_2_date DATE NOT NULL,
    col_3_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_4_cidr CIDR,
    col_5_timestamp TIMESTAMP
);
CREATE INDEX idx_table_069_col3_1 ON table_069 (col_3_decimal_10_2_);
CREATE INDEX idx_table_069_col3_2 ON table_069 (col_3_decimal_10_2_);
CREATE INDEX idx_table_069_col4_3 ON table_069 (col_4_cidr);
CREATE INDEX idx_table_069_col3_4 ON table_069 (col_3_decimal_10_2_);

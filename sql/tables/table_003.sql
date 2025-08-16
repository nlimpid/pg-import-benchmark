CREATE TABLE IF NOT EXISTS table_003 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE NOT NULL,
    col_2_jsonb JSONB NOT NULL,
    col_3_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_4_bigint BIGINT NOT NULL,
    col_5_cidr CIDR NOT NULL
);
CREATE INDEX idx_table_003_col1 ON table_003 (col_1_decimal_10_2_);
CREATE INDEX idx_table_003_col3 ON table_003 (col_3_date);
CREATE INDEX idx_table_003_col1 ON table_003 (col_1_bigint);
ALTER TABLE table_003 ADD CONSTRAINT uk_table_003_col4 UNIQUE (col_4_cidr);

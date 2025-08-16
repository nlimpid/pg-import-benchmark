CREATE TABLE IF NOT EXISTS table_024 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255) DEFAULT '',
    col_2_cidr CIDR NOT NULL,
    col_3_timestamp TIMESTAMP,
    col_4_date DATE,
    col_5_inet INET
);
CREATE INDEX idx_table_024_col1 ON table_024 (col_1_real);
CREATE INDEX idx_table_024_col5 ON table_024 (col_5_double_precision);
CREATE INDEX idx_table_024_col1 ON table_024 (col_1_timestamp);
ALTER TABLE table_024 ADD CONSTRAINT uk_table_024_col5 UNIQUE (col_5_boolean);

CREATE TABLE IF NOT EXISTS table_064 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_timestamp TIMESTAMP,
    col_3_date DATE DEFAULT CURRENT_DATE,
    col_4_bytea BYTEA,
    col_5_jsonb JSONB,
    col_6_cidr CIDR,
    col_7_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_8_varchar_255_ VARCHAR(255) DEFAULT '',
    col_9_bytea BYTEA,
    col_10_cidr CIDR,
    col_11_inet INET NOT NULL,
    col_12_decimal_10_2_ DECIMAL(10,2),
    col_13_decimal_10_2_ DECIMAL(10,2),
    col_14_inet INET
);
CREATE INDEX idx_table_064_col13_1 ON table_064 (col_13_decimal_10_2_);
CREATE INDEX idx_table_064_col10_2 ON table_064 (col_10_cidr);
ALTER TABLE table_064 ADD CONSTRAINT uk_table_064_col3 UNIQUE (col_3_date);

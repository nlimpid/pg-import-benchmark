CREATE TABLE IF NOT EXISTS table_025 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_2_double_precision DOUBLE PRECISION,
    col_3_varchar_255_ VARCHAR(255) NOT NULL,
    col_4_inet INET,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_decimal_10_2_ DECIMAL(10,2),
    col_7_bigint BIGINT
);
CREATE INDEX idx_table_025_col5 ON table_025 (col_5_uuid);
CREATE INDEX idx_table_025_col3 ON table_025 (col_3_boolean);
CREATE INDEX idx_table_025_col3 ON table_025 (col_3_integer);
ALTER TABLE table_025 ADD CONSTRAINT uk_table_025_col6 UNIQUE (col_6_date);

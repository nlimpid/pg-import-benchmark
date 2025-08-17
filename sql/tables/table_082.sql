CREATE TABLE IF NOT EXISTS table_082 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_uuid UUID NOT NULL,
    col_2_double_precision DOUBLE PRECISION,
    col_3_cidr CIDR,
    col_4_numeric_15_4_ NUMERIC(15,4),
    col_5_bigint BIGINT DEFAULT 0,
    col_6_jsonb JSONB,
    col_7_double_precision DOUBLE PRECISION NOT NULL,
    col_8_inet INET,
    col_9_varchar_255_ VARCHAR(255) NOT NULL,
    col_10_date DATE DEFAULT CURRENT_DATE,
    col_11_decimal_10_2_ DECIMAL(10,2),
    col_12_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_13_text TEXT,
    col_14_jsonb JSONB,
    col_15_char_10_ CHAR(10) DEFAULT ''
);
CREATE INDEX idx_table_082_col10_1 ON table_082 (col_10_date);
CREATE INDEX idx_table_082_col7_2 ON table_082 (col_7_double_precision);
CREATE INDEX idx_table_082_col6_3_gin ON table_082 USING GIN (col_6_jsonb);
CREATE INDEX idx_table_082_col8_4 ON table_082 (col_8_inet);
ALTER TABLE table_082 ADD CONSTRAINT uk_table_082_col7 UNIQUE (col_7_double_precision);

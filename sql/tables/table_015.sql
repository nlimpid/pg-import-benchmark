CREATE TABLE IF NOT EXISTS table_015 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB,
    col_2_uuid UUID,
    col_3_uuid UUID,
    col_4_inet INET,
    col_5_bytea BYTEA NOT NULL,
    col_6_integer INTEGER,
    col_7_bigint BIGINT DEFAULT 0,
    col_8_bigint BIGINT NOT NULL,
    col_9_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_10_uuid UUID NOT NULL,
    col_11_bytea BYTEA,
    col_12_integer INTEGER,
    col_13_decimal_10_2_ DECIMAL(10,2),
    col_14_jsonb JSONB NOT NULL
);
CREATE INDEX idx_table_015_col7 ON table_015 (col_7_real);
CREATE INDEX idx_table_015_col13 ON table_015 (col_13_timestamp);
ALTER TABLE table_015 ADD CONSTRAINT uk_table_015_col12 UNIQUE (col_12_decimal_10_2_);

CREATE TABLE IF NOT EXISTS table_027 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT NOT NULL,
    col_2_cidr CIDR,
    col_3_decimal_10_2_ DECIMAL(10,2),
    col_4_double_precision DOUBLE PRECISION,
    col_5_time TIME NOT NULL,
    col_6_double_precision DOUBLE PRECISION,
    col_7_cidr CIDR,
    col_8_boolean BOOLEAN NOT NULL,
    col_9_jsonb JSONB,
    col_10_jsonb JSONB NOT NULL,
    col_11_bigint BIGINT,
    col_12_double_precision DOUBLE PRECISION,
    col_13_char_10_ CHAR(10) DEFAULT ''
);
CREATE INDEX idx_table_027_col10 ON table_027 (col_10_date);
CREATE INDEX idx_table_027_col9 ON table_027 (col_9_timestamp);
CREATE INDEX idx_table_027_col5 ON table_027 (col_5_time);
ALTER TABLE table_027 ADD CONSTRAINT uk_table_027_col4 UNIQUE (col_4_macaddr);

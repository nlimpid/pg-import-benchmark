CREATE TABLE IF NOT EXISTS table_018 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_cidr CIDR,
    col_2_inet INET NOT NULL,
    col_3_decimal_10_2_ DECIMAL(10,2),
    col_4_integer INTEGER,
    col_5_real REAL NOT NULL,
    col_6_bigint BIGINT,
    col_7_boolean BOOLEAN DEFAULT false,
    col_8_jsonb JSONB,
    col_9_char_10_ CHAR(10) NOT NULL
);
CREATE INDEX idx_table_018_col2 ON table_018 (col_2_boolean);
CREATE INDEX idx_table_018_col4 ON table_018 (col_4_timestamp);
CREATE INDEX idx_table_018_col1 ON table_018 (col_1_timestamp);
ALTER TABLE table_018 ADD CONSTRAINT uk_table_018_col7 UNIQUE (col_7_timestamp);

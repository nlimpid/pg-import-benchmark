CREATE TABLE IF NOT EXISTS table_003 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_inet INET,
    col_3_jsonb JSONB NOT NULL,
    col_4_cidr CIDR,
    col_5_macaddr MACADDR,
    col_6_text TEXT NOT NULL,
    col_7_text TEXT NOT NULL DEFAULT '',
    col_8_date DATE,
    col_9_cidr CIDR,
    col_10_char_10_ CHAR(10),
    col_11_real REAL,
    col_12_numeric_15_4_ NUMERIC(15,4),
    col_13_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_003_col1_1 ON table_003 (col_1_bytea);
CREATE INDEX idx_table_003_col7_2 ON table_003 (col_7_text);
CREATE INDEX idx_table_003_col3_3_gin ON table_003 USING GIN (col_3_jsonb);
CREATE INDEX idx_table_003_col2_4 ON table_003 (col_2_inet);
ALTER TABLE table_003 ADD CONSTRAINT uk_table_003_col13 UNIQUE (col_13_numeric_15_4_);

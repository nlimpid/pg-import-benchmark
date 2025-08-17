CREATE TABLE IF NOT EXISTS table_076 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_uuid UUID,
    col_3_time TIME,
    col_4_char_10_ CHAR(10),
    col_5_real REAL,
    col_6_numeric_15_4_ NUMERIC(15,4),
    col_7_jsonb JSONB DEFAULT '{}',
    col_8_integer INTEGER
);
CREATE INDEX idx_table_076_col4_1 ON table_076 (col_4_char_10_);
CREATE INDEX idx_table_076_col8_2 ON table_076 (col_8_integer);
ALTER TABLE table_076 ADD CONSTRAINT uk_table_076_col2 UNIQUE (col_2_uuid);

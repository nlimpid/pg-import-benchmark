CREATE TABLE IF NOT EXISTS table_009 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10),
    col_2_double_precision DOUBLE PRECISION NOT NULL,
    col_3_bigint BIGINT,
    col_4_time TIME NOT NULL,
    col_5_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_6_json JSON,
    col_7_time TIME,
    col_8_integer INTEGER DEFAULT 0
);
CREATE INDEX idx_table_009_col2_1 ON table_009 (col_2_double_precision);
CREATE INDEX idx_table_009_col2_3 ON table_009 (col_2_double_precision);
ALTER TABLE table_009 ADD CONSTRAINT uk_table_009_col8 UNIQUE (col_8_integer);

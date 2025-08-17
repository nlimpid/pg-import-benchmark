CREATE TABLE IF NOT EXISTS table_011 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON,
    col_2_double_precision DOUBLE PRECISION,
    col_3_real REAL,
    col_4_char_10_ CHAR(10) NOT NULL,
    col_5_bytea BYTEA,
    col_6_integer INTEGER NOT NULL,
    col_7_inet INET,
    col_8_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_9_inet INET,
    col_10_integer INTEGER,
    col_11_uuid UUID NOT NULL,
    col_12_bytea BYTEA,
    col_13_numeric_15_4_ NUMERIC(15,4),
    col_14_bytea BYTEA NOT NULL
);
CREATE INDEX idx_table_011_col3_1 ON table_011 (col_3_real);
CREATE INDEX idx_table_011_col5_2 ON table_011 (col_5_bytea);
CREATE INDEX idx_table_011_col9_3 ON table_011 (col_9_inet);
ALTER TABLE table_011 ADD CONSTRAINT uk_table_011_col5 UNIQUE (col_5_bytea);

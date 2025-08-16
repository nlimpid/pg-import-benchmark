CREATE TABLE IF NOT EXISTS table_002 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_char_10_ CHAR(10),
    col_3_bytea BYTEA,
    col_4_json JSON NOT NULL,
    col_5_time TIME,
    col_6_time TIME,
    col_7_time TIME,
    col_8_real REAL,
    col_9_integer INTEGER,
    col_10_numeric_15_4_ NUMERIC(15,4),
    col_11_real REAL NOT NULL,
    col_12_uuid UUID NOT NULL,
    col_13_numeric_15_4_ NUMERIC(15,4) NOT NULL
);
CREATE INDEX idx_table_002_col6 ON table_002 (col_6_inet);
CREATE INDEX idx_table_002_col3 ON table_002 (col_3_json);

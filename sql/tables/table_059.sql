CREATE TABLE IF NOT EXISTS table_059 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION NOT NULL,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_macaddr MACADDR NOT NULL,
    col_4_uuid UUID,
    col_5_varchar_255_ VARCHAR(255) DEFAULT '',
    col_6_macaddr MACADDR,
    col_7_inet INET,
    col_8_varchar_255_ VARCHAR(255) NOT NULL,
    col_9_bigint BIGINT NOT NULL,
    col_10_char_10_ CHAR(10),
    col_11_macaddr MACADDR NOT NULL,
    col_12_varchar_255_ VARCHAR(255),
    col_13_double_precision DOUBLE PRECISION NOT NULL,
    col_14_numeric_15_4_ NUMERIC(15,4),
    col_15_double_precision DOUBLE PRECISION
);
CREATE INDEX idx_table_059_col8_1 ON table_059 (col_8_varchar_255_);
CREATE INDEX idx_table_059_col7_2 ON table_059 (col_7_inet);
CREATE INDEX idx_table_059_col10_3 ON table_059 (col_10_char_10_);
CREATE INDEX idx_table_059_col9_4 ON table_059 (col_9_bigint);

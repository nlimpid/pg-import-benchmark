CREATE TABLE IF NOT EXISTS table_074 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10),
    col_2_bytea BYTEA,
    col_3_integer INTEGER NOT NULL,
    col_4_macaddr MACADDR,
    col_5_bigint BIGINT,
    col_6_decimal_10_2_ DECIMAL(10,2),
    col_7_char_10_ CHAR(10),
    col_8_inet INET NOT NULL,
    col_9_boolean BOOLEAN NOT NULL DEFAULT false,
    col_10_inet INET
);
CREATE INDEX idx_table_074_col8 ON table_074 (col_8_text);
CREATE INDEX idx_table_074_col8 ON table_074 (col_8_double_precision);

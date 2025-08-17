CREATE TABLE IF NOT EXISTS table_020 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_uuid UUID,
    col_3_varchar_255_ VARCHAR(255) NOT NULL,
    col_4_inet INET NOT NULL,
    col_5_char_10_ CHAR(10) NOT NULL,
    col_6_char_10_ CHAR(10),
    col_7_bytea BYTEA,
    col_8_decimal_10_2_ DECIMAL(10,2) NOT NULL
);
CREATE INDEX idx_table_020_col2_1 ON table_020 (col_2_uuid);
CREATE INDEX idx_table_020_col6_2 ON table_020 (col_6_char_10_);

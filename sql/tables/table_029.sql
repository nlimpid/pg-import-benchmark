CREATE TABLE IF NOT EXISTS table_029 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON,
    col_2_macaddr MACADDR,
    col_3_json JSON,
    col_4_json JSON,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_bytea BYTEA,
    col_7_boolean BOOLEAN DEFAULT false,
    col_8_varchar_255_ VARCHAR(255) NOT NULL DEFAULT '',
    col_9_char_10_ CHAR(10) NOT NULL,
    col_10_numeric_15_4_ NUMERIC(15,4),
    col_11_bytea BYTEA NOT NULL,
    col_12_char_10_ CHAR(10),
    col_13_char_10_ CHAR(10)
);
CREATE INDEX idx_table_029_col6_1 ON table_029 (col_6_bytea);
CREATE INDEX idx_table_029_col8_3 ON table_029 (col_8_varchar_255_);

CREATE TABLE IF NOT EXISTS table_019 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET NOT NULL,
    col_2_macaddr MACADDR NOT NULL,
    col_3_char_10_ CHAR(10) NOT NULL,
    col_4_real REAL,
    col_5_boolean BOOLEAN,
    col_6_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_7_char_10_ CHAR(10),
    col_8_json JSON DEFAULT '{}'
);
CREATE INDEX idx_table_019_col7 ON table_019 (col_7_bytea);
CREATE INDEX idx_table_019_col5 ON table_019 (col_5_cidr);
CREATE INDEX idx_table_019_col3 ON table_019 (col_3_real);

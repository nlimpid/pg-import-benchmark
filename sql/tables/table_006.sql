CREATE TABLE IF NOT EXISTS table_006 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_cidr CIDR,
    col_2_date DATE,
    col_3_integer INTEGER,
    col_4_char_10_ CHAR(10),
    col_5_time TIME,
    col_6_varchar_255_ VARCHAR(255) NOT NULL,
    col_7_real REAL NOT NULL,
    col_8_uuid UUID NOT NULL
);
CREATE INDEX idx_table_006_col3 ON table_006 (col_3_char_10_);
CREATE INDEX idx_table_006_col1 ON table_006 (col_1_bytea);
CREATE INDEX idx_table_006_col5 ON table_006 (col_5_bigint);
CREATE INDEX idx_table_006_col2 ON table_006 (col_2_json);

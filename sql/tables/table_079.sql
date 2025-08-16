CREATE TABLE IF NOT EXISTS table_079 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN DEFAULT false,
    col_2_varchar_255_ VARCHAR(255),
    col_3_real REAL,
    col_4_cidr CIDR,
    col_5_bigint BIGINT DEFAULT 0,
    col_6_bytea BYTEA NOT NULL,
    col_7_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_8_date DATE DEFAULT CURRENT_DATE
);
CREATE INDEX idx_table_079_col2 ON table_079 (col_2_bytea);
CREATE INDEX idx_table_079_col1 ON table_079 (col_1_json);
CREATE INDEX idx_table_079_col7 ON table_079 (col_7_cidr);
CREATE INDEX idx_table_079_col3 ON table_079 (col_3_char_10_);

CREATE TABLE IF NOT EXISTS table_083 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER,
    col_2_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_3_json JSON,
    col_4_varchar_255_ VARCHAR(255) NOT NULL DEFAULT '',
    col_5_double_precision DOUBLE PRECISION,
    col_6_char_10_ CHAR(10),
    col_7_cidr CIDR,
    col_8_inet INET NOT NULL
);
CREATE INDEX idx_table_083_col4_1 ON table_083 (col_4_varchar_255_);
CREATE INDEX idx_table_083_col4_2 ON table_083 (col_4_varchar_255_);
CREATE INDEX idx_table_083_col4_3 ON table_083 (col_4_varchar_255_);
CREATE INDEX idx_table_083_col8_4 ON table_083 (col_8_inet);

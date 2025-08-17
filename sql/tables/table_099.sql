CREATE TABLE IF NOT EXISTS table_099 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_timestamp TIMESTAMP NOT NULL,
    col_2_json JSON NOT NULL,
    col_3_double_precision DOUBLE PRECISION,
    col_4_cidr CIDR,
    col_5_timestamp TIMESTAMP NOT NULL,
    col_6_char_10_ CHAR(10),
    col_7_char_10_ CHAR(10) DEFAULT '',
    col_8_double_precision DOUBLE PRECISION,
    col_9_json JSON
);
CREATE INDEX idx_table_099_col6_1 ON table_099 (col_6_char_10_);
CREATE INDEX idx_table_099_col3_4 ON table_099 (col_3_double_precision);

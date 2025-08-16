CREATE TABLE IF NOT EXISTS table_081 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET NOT NULL,
    col_2_char_10_ CHAR(10) DEFAULT '',
    col_3_cidr CIDR,
    col_4_inet INET,
    col_5_real REAL NOT NULL,
    col_6_char_10_ CHAR(10) NOT NULL,
    col_7_date DATE NOT NULL,
    col_8_timestamp TIMESTAMP NOT NULL,
    col_9_integer INTEGER,
    col_10_cidr CIDR,
    col_11_text TEXT,
    col_12_text TEXT,
    col_13_bigint BIGINT
);
CREATE INDEX idx_table_081_col12 ON table_081 (col_12_date);
CREATE INDEX idx_table_081_col3 ON table_081 (col_3_time);
CREATE INDEX idx_table_081_col11 ON table_081 (col_11_date);
ALTER TABLE table_081 ADD CONSTRAINT uk_table_081_col8 UNIQUE (col_8_json);

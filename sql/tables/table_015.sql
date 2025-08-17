CREATE TABLE IF NOT EXISTS table_015 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT,
    col_2_cidr CIDR NOT NULL,
    col_3_real REAL,
    col_4_date DATE DEFAULT CURRENT_DATE,
    col_5_json JSON,
    col_6_json JSON NOT NULL,
    col_7_inet INET,
    col_8_cidr CIDR,
    col_9_char_10_ CHAR(10),
    col_10_boolean BOOLEAN,
    col_11_char_10_ CHAR(10) DEFAULT '',
    col_12_time TIME
);
CREATE INDEX idx_table_015_col8_1 ON table_015 (col_8_cidr);
ALTER TABLE table_015 ADD CONSTRAINT uk_table_015_col11 UNIQUE (col_11_char_10_);

CREATE TABLE IF NOT EXISTS table_026 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4),
    col_2_jsonb JSONB NOT NULL,
    col_3_char_10_ CHAR(10) DEFAULT '',
    col_4_uuid UUID NOT NULL,
    col_5_varchar_255_ VARCHAR(255) DEFAULT '',
    col_6_date DATE,
    col_7_integer INTEGER DEFAULT 0,
    col_8_macaddr MACADDR,
    col_9_inet INET,
    col_10_bigint BIGINT NOT NULL,
    col_11_varchar_255_ VARCHAR(255),
    col_12_json JSON NOT NULL DEFAULT '{}'
);
CREATE INDEX idx_table_026_col6 ON table_026 (col_6_inet);
CREATE INDEX idx_table_026_col10 ON table_026 (col_10_timestamp);
ALTER TABLE table_026 ADD CONSTRAINT uk_table_026_col3 UNIQUE (col_3_numeric_15_4_);

CREATE TABLE IF NOT EXISTS table_089 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_2_bigint BIGINT NOT NULL,
    col_3_cidr CIDR NOT NULL,
    col_4_json JSON,
    col_5_varchar_255_ VARCHAR(255),
    col_6_boolean BOOLEAN DEFAULT false,
    col_7_date DATE DEFAULT CURRENT_DATE,
    col_8_time TIME,
    col_9_json JSON DEFAULT '{}',
    col_10_boolean BOOLEAN,
    col_11_jsonb JSONB,
    col_12_varchar_255_ VARCHAR(255)
);
CREATE INDEX idx_table_089_col2 ON table_089 (col_2_json);
CREATE INDEX idx_table_089_col3 ON table_089 (col_3_integer);
CREATE INDEX idx_table_089_col5 ON table_089 (col_5_integer);
ALTER TABLE table_089 ADD CONSTRAINT uk_table_089_col8 UNIQUE (col_8_char_10_);

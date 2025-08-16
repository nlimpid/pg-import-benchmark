CREATE TABLE IF NOT EXISTS table_046 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_uuid UUID,
    col_2_text TEXT,
    col_3_text TEXT,
    col_4_json JSON NOT NULL,
    col_5_varchar_255_ VARCHAR(255) DEFAULT '',
    col_6_macaddr MACADDR NOT NULL,
    col_7_jsonb JSONB,
    col_8_time TIME,
    col_9_char_10_ CHAR(10) DEFAULT '',
    col_10_double_precision DOUBLE PRECISION,
    col_11_char_10_ CHAR(10)
);
CREATE INDEX idx_table_046_col11 ON table_046 (col_11_timestamp);
CREATE INDEX idx_table_046_col6 ON table_046 (col_6_bytea);
CREATE INDEX idx_table_046_col4 ON table_046 (col_4_time);
ALTER TABLE table_046 ADD CONSTRAINT uk_table_046_col1 UNIQUE (col_1_boolean);

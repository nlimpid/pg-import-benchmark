CREATE TABLE IF NOT EXISTS table_061 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255),
    col_2_bigint BIGINT NOT NULL,
    col_3_bigint BIGINT,
    col_4_bytea BYTEA NOT NULL,
    col_5_integer INTEGER DEFAULT 0,
    col_6_char_10_ CHAR(10) DEFAULT '',
    col_7_json JSON,
    col_8_time TIME,
    col_9_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_table_061_col2 ON table_061 (col_2_real);
CREATE INDEX idx_table_061_col7 ON table_061 (col_7_integer);
CREATE INDEX idx_table_061_col3 ON table_061 (col_3_date);
ALTER TABLE table_061 ADD CONSTRAINT uk_table_061_col4 UNIQUE (col_4_bigint);

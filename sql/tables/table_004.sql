CREATE TABLE IF NOT EXISTS table_004 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON NOT NULL,
    col_2_json JSON NOT NULL DEFAULT '{}',
    col_3_inet INET,
    col_4_inet INET,
    col_5_real REAL,
    col_6_real REAL,
    col_7_varchar_255_ VARCHAR(255) NOT NULL
);
CREATE INDEX idx_table_004_col3 ON table_004 (col_3_jsonb);
CREATE INDEX idx_table_004_col2 ON table_004 (col_2_timestamp);
ALTER TABLE table_004 ADD CONSTRAINT uk_table_004_col5 UNIQUE (col_5_bytea);

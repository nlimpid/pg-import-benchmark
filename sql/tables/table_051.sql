CREATE TABLE IF NOT EXISTS table_051 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN,
    col_2_json JSON,
    col_3_json JSON,
    col_4_real REAL,
    col_5_jsonb JSONB NOT NULL,
    col_6_bytea BYTEA,
    col_7_cidr CIDR,
    col_8_varchar_255_ VARCHAR(255) NOT NULL,
    col_9_date DATE DEFAULT CURRENT_DATE,
    col_10_numeric_15_4_ NUMERIC(15,4),
    col_11_time TIME,
    col_12_timestamp TIMESTAMP,
    col_13_macaddr MACADDR,
    col_14_real REAL
);
CREATE INDEX idx_table_051_col12 ON table_051 (col_12_timestamp);
CREATE INDEX idx_table_051_col8 ON table_051 (col_8_date);
ALTER TABLE table_051 ADD CONSTRAINT uk_table_051_col9 UNIQUE (col_9_text);

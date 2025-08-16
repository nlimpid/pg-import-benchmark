CREATE TABLE IF NOT EXISTS table_068 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON,
    col_2_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_3_jsonb JSONB,
    col_4_boolean BOOLEAN NOT NULL DEFAULT false,
    col_5_bytea BYTEA,
    col_6_jsonb JSONB,
    col_7_bigint BIGINT,
    col_8_varchar_255_ VARCHAR(255),
    col_9_varchar_255_ VARCHAR(255) NOT NULL,
    col_10_bigint BIGINT DEFAULT 0,
    col_11_json JSON NOT NULL,
    col_12_varchar_255_ VARCHAR(255),
    col_13_bigint BIGINT NOT NULL,
    col_14_jsonb JSONB,
    col_15_macaddr MACADDR
);
CREATE INDEX idx_table_068_col14 ON table_068 (col_14_varchar_255_);
CREATE INDEX idx_table_068_col12 ON table_068 (col_12_json);
CREATE INDEX idx_table_068_col5 ON table_068 (col_5_boolean);
CREATE INDEX idx_table_068_col15 ON table_068 (col_15_integer);
ALTER TABLE table_068 ADD CONSTRAINT uk_table_068_col13 UNIQUE (col_13_numeric_15_4_);

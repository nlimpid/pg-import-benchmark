CREATE TABLE IF NOT EXISTS table_082 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_bytea BYTEA,
    col_3_bigint BIGINT,
    col_4_bigint BIGINT NOT NULL,
    col_5_varchar_255_ VARCHAR(255) NOT NULL DEFAULT '',
    col_6_text TEXT,
    col_7_cidr CIDR,
    col_8_jsonb JSONB NOT NULL,
    col_9_uuid UUID NOT NULL,
    col_10_date DATE
);
CREATE INDEX idx_table_082_col2 ON table_082 (col_2_cidr);
CREATE INDEX idx_table_082_col9 ON table_082 (col_9_text);

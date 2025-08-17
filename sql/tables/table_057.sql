CREATE TABLE IF NOT EXISTS table_057 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_inet INET NOT NULL,
    col_3_jsonb JSONB,
    col_4_decimal_10_2_ DECIMAL(10,2),
    col_5_bytea BYTEA,
    col_6_json JSON,
    col_7_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_table_057_col7_1 ON table_057 (col_7_timestamp);
CREATE INDEX idx_table_057_col4_2 ON table_057 (col_4_decimal_10_2_);
CREATE INDEX idx_table_057_col5_3 ON table_057 (col_5_bytea);
ALTER TABLE table_057 ADD CONSTRAINT uk_table_057_col7 UNIQUE (col_7_timestamp);

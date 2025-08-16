CREATE TABLE IF NOT EXISTS table_038 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_bigint BIGINT,
    col_3_json JSON DEFAULT '{}',
    col_4_inet INET NOT NULL,
    col_5_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_table_038_col5 ON table_038 (col_5_decimal_10_2_);
CREATE INDEX idx_table_038_col3 ON table_038 (col_3_uuid);
CREATE INDEX idx_table_038_col4 ON table_038 (col_4_real);
CREATE INDEX idx_table_038_col5 ON table_038 (col_5_real);

CREATE TABLE IF NOT EXISTS table_067 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT NOT NULL,
    col_2_uuid UUID,
    col_3_uuid UUID,
    col_4_json JSON,
    col_5_time TIME,
    col_6_text TEXT,
    col_7_decimal_10_2_ DECIMAL(10,2),
    col_8_real REAL,
    col_9_macaddr MACADDR
);
CREATE INDEX idx_table_067_col3 ON table_067 (col_3_bytea);
CREATE INDEX idx_table_067_col2 ON table_067 (col_2_varchar_255_);

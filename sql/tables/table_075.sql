CREATE TABLE IF NOT EXISTS table_075 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_json JSON,
    col_3_timestamp TIMESTAMP,
    col_4_bigint BIGINT NOT NULL DEFAULT 0,
    col_5_text TEXT
);
CREATE INDEX idx_table_075_col4_1 ON table_075 (col_4_bigint);
CREATE INDEX idx_table_075_col5_2 ON table_075 (col_5_text);

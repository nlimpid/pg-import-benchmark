CREATE TABLE IF NOT EXISTS table_100 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT,
    col_2_bigint BIGINT,
    col_3_integer INTEGER,
    col_4_json JSON DEFAULT '{}',
    col_5_inet INET NOT NULL,
    col_6_date DATE,
    col_7_numeric_15_4_ NUMERIC(15,4),
    col_8_json JSON,
    col_9_uuid UUID NOT NULL,
    col_10_bytea BYTEA
);
CREATE INDEX idx_table_100_col1_2 ON table_100 (col_1_text);

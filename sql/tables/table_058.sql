CREATE TABLE IF NOT EXISTS table_058 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_varchar_255_ VARCHAR(255),
    col_3_numeric_15_4_ NUMERIC(15,4),
    col_4_date DATE,
    col_5_real REAL,
    col_6_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_7_real REAL,
    col_8_inet INET,
    col_9_jsonb JSONB,
    col_10_integer INTEGER,
    col_11_json JSON DEFAULT '{}',
    col_12_integer INTEGER NOT NULL,
    col_13_json JSON,
    col_14_numeric_15_4_ NUMERIC(15,4) NOT NULL
);
CREATE INDEX idx_table_058_col2_1 ON table_058 (col_2_varchar_255_);
CREATE INDEX idx_table_058_col9_3_gin ON table_058 USING GIN (col_9_jsonb);

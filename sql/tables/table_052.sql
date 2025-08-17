CREATE TABLE IF NOT EXISTS table_052 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE DEFAULT CURRENT_DATE,
    col_2_date DATE NOT NULL,
    col_3_text TEXT NOT NULL,
    col_4_jsonb JSONB NOT NULL DEFAULT '{}',
    col_5_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_6_real REAL,
    col_7_cidr CIDR,
    col_8_jsonb JSONB NOT NULL,
    col_9_varchar_255_ VARCHAR(255) NOT NULL
);
CREATE INDEX idx_table_052_col7_1 ON table_052 (col_7_cidr);
CREATE INDEX idx_table_052_col4_2_gin ON table_052 USING GIN (col_4_jsonb);

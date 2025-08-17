CREATE TABLE IF NOT EXISTS table_040 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB DEFAULT '{}',
    col_2_time TIME NOT NULL,
    col_3_double_precision DOUBLE PRECISION,
    col_4_jsonb JSONB DEFAULT '{}',
    col_5_date DATE DEFAULT CURRENT_DATE,
    col_6_time TIME,
    col_7_date DATE DEFAULT CURRENT_DATE,
    col_8_macaddr MACADDR,
    col_9_time TIME,
    col_10_varchar_255_ VARCHAR(255) NOT NULL DEFAULT ''
);
CREATE INDEX idx_table_040_col9_1 ON table_040 (col_9_time);
CREATE INDEX idx_table_040_col5_2 ON table_040 (col_5_date);
CREATE INDEX idx_table_040_col4_3_gin ON table_040 USING GIN (col_4_jsonb);

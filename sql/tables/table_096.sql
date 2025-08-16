CREATE TABLE IF NOT EXISTS table_096 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_time TIME NOT NULL,
    col_3_time TIME,
    col_4_text TEXT,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_boolean BOOLEAN NOT NULL DEFAULT false,
    col_7_text TEXT,
    col_8_text TEXT,
    col_9_jsonb JSONB,
    col_10_double_precision DOUBLE PRECISION NOT NULL,
    col_11_jsonb JSONB DEFAULT '{}',
    col_12_date DATE,
    col_13_inet INET,
    col_14_json JSON DEFAULT '{}'
);
CREATE INDEX idx_table_096_col14 ON table_096 (col_14_boolean);
CREATE INDEX idx_table_096_col6 ON table_096 (col_6_text);

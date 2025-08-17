CREATE TABLE IF NOT EXISTS table_068 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_time TIME,
    col_3_integer INTEGER DEFAULT 0,
    col_4_decimal_10_2_ DECIMAL(10,2),
    col_5_text TEXT NOT NULL,
    col_6_integer INTEGER NOT NULL,
    col_7_boolean BOOLEAN NOT NULL DEFAULT false,
    col_8_boolean BOOLEAN,
    col_9_jsonb JSONB DEFAULT '{}',
    col_10_boolean BOOLEAN,
    col_11_real REAL
);
CREATE INDEX idx_table_068_col5_1 ON table_068 (col_5_text);
CREATE INDEX idx_table_068_col3_2 ON table_068 (col_3_integer);

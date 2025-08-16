CREATE TABLE IF NOT EXISTS table_043 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER,
    col_2_decimal_10_2_ DECIMAL(10,2),
    col_3_text TEXT,
    col_4_macaddr MACADDR NOT NULL,
    col_5_jsonb JSONB,
    col_6_inet INET,
    col_7_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_8_date DATE
);
CREATE INDEX idx_table_043_col2 ON table_043 (col_2_integer);
CREATE INDEX idx_table_043_col1 ON table_043 (col_1_jsonb);

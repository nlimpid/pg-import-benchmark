CREATE TABLE IF NOT EXISTS table_013 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_inet INET,
    col_3_date DATE DEFAULT CURRENT_DATE,
    col_4_varchar_255_ VARCHAR(255),
    col_5_text TEXT DEFAULT '',
    col_6_cidr CIDR,
    col_7_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_8_jsonb JSONB DEFAULT '{}',
    col_9_date DATE NOT NULL,
    col_10_date DATE NOT NULL,
    col_11_integer INTEGER DEFAULT 0,
    col_12_double_precision DOUBLE PRECISION
);
CREATE INDEX idx_table_013_col11 ON table_013 (col_11_inet);
CREATE INDEX idx_table_013_col6 ON table_013 (col_6_text);
CREATE INDEX idx_table_013_col12 ON table_013 (col_12_real);

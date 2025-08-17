CREATE TABLE IF NOT EXISTS table_014 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255),
    col_2_cidr CIDR NOT NULL,
    col_3_numeric_15_4_ NUMERIC(15,4),
    col_4_numeric_15_4_ NUMERIC(15,4),
    col_5_text TEXT NOT NULL DEFAULT '',
    col_6_date DATE DEFAULT CURRENT_DATE
);
CREATE INDEX idx_table_014_col5_1 ON table_014 (col_5_text);
CREATE INDEX idx_table_014_col4_2 ON table_014 (col_4_numeric_15_4_);

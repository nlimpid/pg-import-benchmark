CREATE TABLE IF NOT EXISTS table_024 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER,
    col_2_uuid UUID,
    col_3_date DATE,
    col_4_time TIME NOT NULL,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_date DATE
);
CREATE INDEX idx_table_024_col2_1 ON table_024 (col_2_uuid);
CREATE INDEX idx_table_024_col2_2 ON table_024 (col_2_uuid);

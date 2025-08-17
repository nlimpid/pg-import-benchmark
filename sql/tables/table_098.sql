CREATE TABLE IF NOT EXISTS table_098 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON,
    col_2_json JSON,
    col_3_date DATE NOT NULL,
    col_4_numeric_15_4_ NUMERIC(15,4),
    col_5_double_precision DOUBLE PRECISION,
    col_6_double_precision DOUBLE PRECISION,
    col_7_time TIME,
    col_8_inet INET,
    col_9_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_098_col9_1 ON table_098 (col_9_numeric_15_4_);
CREATE INDEX idx_table_098_col3_2 ON table_098 (col_3_date);
CREATE INDEX idx_table_098_col7_4 ON table_098 (col_7_time);

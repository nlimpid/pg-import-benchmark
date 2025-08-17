CREATE TABLE IF NOT EXISTS table_001 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_bigint BIGINT NOT NULL DEFAULT 0,
    col_3_boolean BOOLEAN DEFAULT false,
    col_4_date DATE DEFAULT CURRENT_DATE,
    col_5_real REAL,
    col_6_real REAL,
    col_7_inet INET
);
CREATE INDEX idx_table_001_col6_1 ON table_001 (col_6_real);
CREATE INDEX idx_table_001_col4_2 ON table_001 (col_4_date);
CREATE INDEX idx_table_001_col5_3 ON table_001 (col_5_real);

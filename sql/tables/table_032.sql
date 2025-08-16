CREATE TABLE IF NOT EXISTS table_032 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER,
    col_2_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_3_time TIME,
    col_4_text TEXT,
    col_5_date DATE
);
CREATE INDEX idx_table_032_col5 ON table_032 (col_5_real);
CREATE INDEX idx_table_032_col5 ON table_032 (col_5_date);
CREATE INDEX idx_table_032_col1 ON table_032 (col_1_bigint);
CREATE INDEX idx_table_032_col2 ON table_032 (col_2_timestamp);
ALTER TABLE table_032 ADD CONSTRAINT uk_table_032_col5 UNIQUE (col_5_timestamp);

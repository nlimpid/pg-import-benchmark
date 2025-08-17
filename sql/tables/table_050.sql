CREATE TABLE IF NOT EXISTS table_050 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_uuid UUID,
    col_2_text TEXT,
    col_3_uuid UUID,
    col_4_time TIME,
    col_5_bytea BYTEA NOT NULL,
    col_6_date DATE NOT NULL,
    col_7_integer INTEGER,
    col_8_double_precision DOUBLE PRECISION
);
CREATE INDEX idx_table_050_col4_1 ON table_050 (col_4_time);
CREATE INDEX idx_table_050_col8_2 ON table_050 (col_8_double_precision);
CREATE INDEX idx_table_050_col2_3 ON table_050 (col_2_text);
CREATE INDEX idx_table_050_col8_4 ON table_050 (col_8_double_precision);

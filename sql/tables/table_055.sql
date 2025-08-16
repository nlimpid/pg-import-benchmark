CREATE TABLE IF NOT EXISTS table_055 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_decimal_10_2_ DECIMAL(10,2),
    col_2_text TEXT,
    col_3_inet INET,
    col_4_varchar_255_ VARCHAR(255) NOT NULL DEFAULT '',
    col_5_uuid UUID
);
CREATE INDEX idx_table_055_col4 ON table_055 (col_4_time);
CREATE INDEX idx_table_055_col3 ON table_055 (col_3_real);
CREATE INDEX idx_table_055_col5 ON table_055 (col_5_integer);
ALTER TABLE table_055 ADD CONSTRAINT uk_table_055_col4 UNIQUE (col_4_time);

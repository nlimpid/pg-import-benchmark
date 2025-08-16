CREATE TABLE IF NOT EXISTS table_050 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT DEFAULT '',
    col_2_date DATE,
    col_3_varchar_255_ VARCHAR(255) DEFAULT '',
    col_4_integer INTEGER NOT NULL DEFAULT 0,
    col_5_boolean BOOLEAN DEFAULT false,
    col_6_uuid UUID,
    col_7_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_8_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    col_9_macaddr MACADDR
);
CREATE INDEX idx_table_050_col1 ON table_050 (col_1_numeric_15_4_);
CREATE INDEX idx_table_050_col8 ON table_050 (col_8_decimal_10_2_);
ALTER TABLE table_050 ADD CONSTRAINT uk_table_050_col2 UNIQUE (col_2_cidr);

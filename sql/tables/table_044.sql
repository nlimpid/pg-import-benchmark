CREATE TABLE IF NOT EXISTS table_044 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB NOT NULL DEFAULT '{}',
    col_2_date DATE NOT NULL,
    col_3_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_4_jsonb JSONB,
    col_5_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_6_uuid UUID,
    col_7_timestamp TIMESTAMP,
    col_8_boolean BOOLEAN,
    col_9_cidr CIDR NOT NULL,
    col_10_char_10_ CHAR(10),
    col_11_varchar_255_ VARCHAR(255),
    col_12_decimal_10_2_ DECIMAL(10,2) NOT NULL
);
CREATE INDEX idx_table_044_col7 ON table_044 (col_7_text);
CREATE INDEX idx_table_044_col8 ON table_044 (col_8_timestamp);
CREATE INDEX idx_table_044_col4 ON table_044 (col_4_cidr);
CREATE INDEX idx_table_044_col11 ON table_044 (col_11_real);

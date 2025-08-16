CREATE TABLE IF NOT EXISTS table_058 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10) NOT NULL,
    col_2_text TEXT NOT NULL,
    col_3_text TEXT,
    col_4_uuid UUID NOT NULL,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_json JSON NOT NULL DEFAULT '{}',
    col_7_char_10_ CHAR(10) NOT NULL
);
CREATE INDEX idx_table_058_col4 ON table_058 (col_4_date);
CREATE INDEX idx_table_058_col7 ON table_058 (col_7_varchar_255_);
CREATE INDEX idx_table_058_col7 ON table_058 (col_7_bigint);
ALTER TABLE table_058 ADD CONSTRAINT uk_table_058_col3 UNIQUE (col_3_date);

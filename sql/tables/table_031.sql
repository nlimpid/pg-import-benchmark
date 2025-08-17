CREATE TABLE IF NOT EXISTS table_031 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT DEFAULT '',
    col_2_double_precision DOUBLE PRECISION,
    col_3_time TIME NOT NULL,
    col_4_json JSON,
    col_5_bigint BIGINT NOT NULL,
    col_6_real REAL,
    col_7_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_8_double_precision DOUBLE PRECISION NOT NULL
);
CREATE INDEX idx_table_031_col1_1 ON table_031 (col_1_text);
CREATE INDEX idx_table_031_col8_2 ON table_031 (col_8_double_precision);
ALTER TABLE table_031 ADD CONSTRAINT uk_table_031_col2 UNIQUE (col_2_double_precision);

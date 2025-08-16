CREATE TABLE IF NOT EXISTS table_087 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER NOT NULL DEFAULT 0,
    col_2_integer INTEGER,
    col_3_json JSON,
    col_4_macaddr MACADDR NOT NULL,
    col_5_boolean BOOLEAN,
    col_6_json JSON,
    col_7_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_8_text TEXT,
    col_9_real REAL NOT NULL,
    col_10_double_precision DOUBLE PRECISION,
    col_11_varchar_255_ VARCHAR(255)
);
CREATE INDEX idx_table_087_col8 ON table_087 (col_8_jsonb);
CREATE INDEX idx_table_087_col6 ON table_087 (col_6_uuid);
CREATE INDEX idx_table_087_col8 ON table_087 (col_8_uuid);
CREATE INDEX idx_table_087_col11 ON table_087 (col_11_decimal_10_2_);
ALTER TABLE table_087 ADD CONSTRAINT uk_table_087_col5 UNIQUE (col_5_integer);

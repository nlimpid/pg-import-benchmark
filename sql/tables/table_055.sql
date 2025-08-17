CREATE TABLE IF NOT EXISTS table_055 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_uuid UUID,
    col_2_bigint BIGINT,
    col_3_real REAL NOT NULL,
    col_4_date DATE DEFAULT CURRENT_DATE,
    col_5_char_10_ CHAR(10) NOT NULL,
    col_6_time TIME,
    col_7_json JSON NOT NULL DEFAULT '{}',
    col_8_char_10_ CHAR(10),
    col_9_macaddr MACADDR NOT NULL,
    col_10_boolean BOOLEAN DEFAULT false,
    col_11_char_10_ CHAR(10),
    col_12_double_precision DOUBLE PRECISION NOT NULL,
    col_13_numeric_15_4_ NUMERIC(15,4),
    col_14_char_10_ CHAR(10) NOT NULL,
    col_15_time TIME
);
CREATE INDEX idx_table_055_col3_1 ON table_055 (col_3_real);
CREATE INDEX idx_table_055_col8_2 ON table_055 (col_8_char_10_);
CREATE INDEX idx_table_055_col15_3 ON table_055 (col_15_time);

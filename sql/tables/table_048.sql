CREATE TABLE IF NOT EXISTS table_048 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT,
    col_2_time TIME,
    col_3_bigint BIGINT NOT NULL,
    col_4_time TIME,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_boolean BOOLEAN DEFAULT false,
    col_7_uuid UUID NOT NULL,
    col_8_char_10_ CHAR(10) NOT NULL,
    col_9_boolean BOOLEAN DEFAULT false,
    col_10_double_precision DOUBLE PRECISION NOT NULL,
    col_11_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_12_timestamp TIMESTAMP,
    col_13_bigint BIGINT NOT NULL,
    col_14_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_048_col4_1 ON table_048 (col_4_time);
CREATE INDEX idx_table_048_col10_2 ON table_048 (col_10_double_precision);
CREATE INDEX idx_table_048_col6_3 ON table_048 (col_6_boolean);
CREATE INDEX idx_table_048_col6_4 ON table_048 (col_6_boolean);
ALTER TABLE table_048 ADD CONSTRAINT uk_table_048_col11 UNIQUE (col_11_date);

CREATE TABLE IF NOT EXISTS table_040 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_macaddr MACADDR NOT NULL,
    col_3_numeric_15_4_ NUMERIC(15,4),
    col_4_integer INTEGER,
    col_5_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_6_json JSON,
    col_7_uuid UUID
);
CREATE INDEX idx_table_040_col3 ON table_040 (col_3_real);
CREATE INDEX idx_table_040_col7 ON table_040 (col_7_bytea);
CREATE INDEX idx_table_040_col3 ON table_040 (col_3_numeric_15_4_);
CREATE INDEX idx_table_040_col5 ON table_040 (col_5_date);
ALTER TABLE table_040 ADD CONSTRAINT uk_table_040_col5 UNIQUE (col_5_char_10_);

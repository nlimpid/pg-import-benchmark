CREATE TABLE IF NOT EXISTS table_062 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_boolean BOOLEAN NOT NULL,
    col_3_date DATE,
    col_4_time TIME,
    col_5_json JSON,
    col_6_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_7_bytea BYTEA
);
CREATE INDEX idx_table_062_col3 ON table_062 (col_3_real);
CREATE INDEX idx_table_062_col4 ON table_062 (col_4_text);
CREATE INDEX idx_table_062_col6 ON table_062 (col_6_double_precision);

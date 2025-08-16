CREATE TABLE IF NOT EXISTS table_017 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_real REAL,
    col_2_boolean BOOLEAN,
    col_3_macaddr MACADDR,
    col_4_real REAL,
    col_5_date DATE DEFAULT CURRENT_DATE,
    col_6_double_precision DOUBLE PRECISION
);
CREATE INDEX idx_table_017_col2 ON table_017 (col_2_json);
CREATE INDEX idx_table_017_col3 ON table_017 (col_3_jsonb);
CREATE INDEX idx_table_017_col6 ON table_017 (col_6_real);
CREATE INDEX idx_table_017_col5 ON table_017 (col_5_boolean);

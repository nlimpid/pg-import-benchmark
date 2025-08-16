CREATE TABLE IF NOT EXISTS table_072 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_3_jsonb JSONB,
    col_4_integer INTEGER,
    col_5_jsonb JSONB,
    col_6_jsonb JSONB NOT NULL DEFAULT '{}',
    col_7_time TIME,
    col_8_date DATE DEFAULT CURRENT_DATE
);
CREATE INDEX idx_table_072_col1 ON table_072 (col_1_time);
CREATE INDEX idx_table_072_col5 ON table_072 (col_5_decimal_10_2_);
CREATE INDEX idx_table_072_col7 ON table_072 (col_7_bytea);

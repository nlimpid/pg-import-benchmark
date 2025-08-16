CREATE TABLE IF NOT EXISTS table_091 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME NOT NULL,
    col_2_jsonb JSONB NOT NULL,
    col_3_bytea BYTEA,
    col_4_uuid UUID,
    col_5_time TIME,
    col_6_inet INET,
    col_7_date DATE DEFAULT CURRENT_DATE
);
CREATE INDEX idx_table_091_col1 ON table_091 (col_1_double_precision);
CREATE INDEX idx_table_091_col6 ON table_091 (col_6_char_10_);
CREATE INDEX idx_table_091_col6 ON table_091 (col_6_timestamp);
CREATE INDEX idx_table_091_col3 ON table_091 (col_3_json);

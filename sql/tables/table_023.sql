CREATE TABLE IF NOT EXISTS table_023 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE DEFAULT CURRENT_DATE,
    col_2_macaddr MACADDR,
    col_3_inet INET,
    col_4_json JSON NOT NULL,
    col_5_timestamp TIMESTAMP
);
CREATE INDEX idx_table_023_col2 ON table_023 (col_2_text);
CREATE INDEX idx_table_023_col3 ON table_023 (col_3_bigint);
CREATE INDEX idx_table_023_col2 ON table_023 (col_2_decimal_10_2_);
ALTER TABLE table_023 ADD CONSTRAINT uk_table_023_col1 UNIQUE (col_1_integer);

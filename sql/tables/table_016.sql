CREATE TABLE IF NOT EXISTS table_016 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN NOT NULL,
    col_2_date DATE DEFAULT CURRENT_DATE,
    col_3_timestamp TIMESTAMP NOT NULL,
    col_4_json JSON,
    col_5_integer INTEGER NOT NULL,
    col_6_inet INET
);
CREATE INDEX idx_table_016_col6_2 ON table_016 (col_6_inet);
CREATE INDEX idx_table_016_col2_4 ON table_016 (col_2_date);
ALTER TABLE table_016 ADD CONSTRAINT uk_table_016_col1 UNIQUE (col_1_boolean);

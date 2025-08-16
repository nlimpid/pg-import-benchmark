CREATE TABLE IF NOT EXISTS table_031 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_inet INET NOT NULL,
    col_4_timestamp TIMESTAMP,
    col_5_inet INET
);
CREATE INDEX idx_table_031_col1 ON table_031 (col_1_jsonb);
CREATE INDEX idx_table_031_col1 ON table_031 (col_1_varchar_255_);
CREATE INDEX idx_table_031_col2 ON table_031 (col_2_time);
ALTER TABLE table_031 ADD CONSTRAINT uk_table_031_col4 UNIQUE (col_4_integer);

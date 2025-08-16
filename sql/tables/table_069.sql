CREATE TABLE IF NOT EXISTS table_069 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4),
    col_2_real REAL,
    col_3_date DATE DEFAULT CURRENT_DATE,
    col_4_boolean BOOLEAN,
    col_5_cidr CIDR NOT NULL
);
CREATE INDEX idx_table_069_col1 ON table_069 (col_1_integer);
CREATE INDEX idx_table_069_col1 ON table_069 (col_1_inet);
CREATE INDEX idx_table_069_col3 ON table_069 (col_3_integer);
ALTER TABLE table_069 ADD CONSTRAINT uk_table_069_col2 UNIQUE (col_2_bytea);

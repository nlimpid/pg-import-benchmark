CREATE TABLE IF NOT EXISTS table_056 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT,
    col_2_bigint BIGINT NOT NULL,
    col_3_cidr CIDR NOT NULL,
    col_4_date DATE DEFAULT CURRENT_DATE,
    col_5_date DATE DEFAULT CURRENT_DATE,
    col_6_inet INET NOT NULL
);
CREATE INDEX idx_table_056_col1 ON table_056 (col_1_integer);
CREATE INDEX idx_table_056_col5 ON table_056 (col_5_uuid);
CREATE INDEX idx_table_056_col2 ON table_056 (col_2_jsonb);

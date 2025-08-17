CREATE TABLE IF NOT EXISTS table_044 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4),
    col_2_inet INET NOT NULL,
    col_3_double_precision DOUBLE PRECISION,
    col_4_bigint BIGINT,
    col_5_jsonb JSONB,
    col_6_boolean BOOLEAN
);
CREATE INDEX idx_table_044_col4_1 ON table_044 (col_4_bigint);
CREATE INDEX idx_table_044_col4_2 ON table_044 (col_4_bigint);
CREATE INDEX idx_table_044_col6_3 ON table_044 (col_6_boolean);

CREATE TABLE IF NOT EXISTS table_094 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN DEFAULT false,
    col_2_json JSON DEFAULT '{}',
    col_3_integer INTEGER,
    col_4_jsonb JSONB NOT NULL,
    col_5_inet INET NOT NULL,
    col_6_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_094_col5_1 ON table_094 (col_5_inet);
CREATE INDEX idx_table_094_col3_2 ON table_094 (col_3_integer);
CREATE INDEX idx_table_094_col4_3_gin ON table_094 USING GIN (col_4_jsonb);
CREATE INDEX idx_table_094_col5_4 ON table_094 (col_5_inet);

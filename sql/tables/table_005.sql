CREATE TABLE IF NOT EXISTS table_005 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_uuid UUID,
    col_4_boolean BOOLEAN NOT NULL,
    col_5_inet INET,
    col_6_jsonb JSONB DEFAULT '{}',
    col_7_char_10_ CHAR(10),
    col_8_bigint BIGINT,
    col_9_timestamp TIMESTAMP
);
CREATE INDEX idx_table_005_col5_1 ON table_005 (col_5_inet);
CREATE INDEX idx_table_005_col4_2 ON table_005 (col_4_boolean);

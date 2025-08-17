CREATE TABLE IF NOT EXISTS table_054 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_time TIME,
    col_3_jsonb JSONB DEFAULT '{}',
    col_4_jsonb JSONB,
    col_5_double_precision DOUBLE PRECISION,
    col_6_time TIME NOT NULL,
    col_7_time TIME,
    col_8_cidr CIDR NOT NULL,
    col_9_uuid UUID,
    col_10_bigint BIGINT NOT NULL DEFAULT 0,
    col_11_timestamp TIMESTAMP,
    col_12_macaddr MACADDR,
    col_13_time TIME NOT NULL,
    col_14_char_10_ CHAR(10) NOT NULL
);
CREATE INDEX idx_table_054_col4_1_gin ON table_054 USING GIN (col_4_jsonb);
CREATE INDEX idx_table_054_col8_2 ON table_054 (col_8_cidr);
CREATE INDEX idx_table_054_col13_3 ON table_054 (col_13_time);

CREATE TABLE IF NOT EXISTS table_042 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_cidr CIDR NOT NULL,
    col_2_inet INET,
    col_3_jsonb JSONB,
    col_4_varchar_255_ VARCHAR(255),
    col_5_text TEXT,
    col_6_jsonb JSONB NOT NULL,
    col_7_integer INTEGER NOT NULL,
    col_8_char_10_ CHAR(10),
    col_9_jsonb JSONB,
    col_10_macaddr MACADDR NOT NULL,
    col_11_uuid UUID NOT NULL,
    col_12_uuid UUID,
    col_13_bytea BYTEA,
    col_14_boolean BOOLEAN
);
CREATE INDEX idx_table_042_col11_1 ON table_042 (col_11_uuid);
CREATE INDEX idx_table_042_col6_2_gin ON table_042 USING GIN (col_6_jsonb);
CREATE INDEX idx_table_042_col8_3 ON table_042 (col_8_char_10_);

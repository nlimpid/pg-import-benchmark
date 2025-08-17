CREATE TABLE IF NOT EXISTS table_043 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255),
    col_2_varchar_255_ VARCHAR(255) DEFAULT '',
    col_3_numeric_15_4_ NUMERIC(15,4),
    col_4_date DATE,
    col_5_date DATE NOT NULL,
    col_6_jsonb JSONB DEFAULT '{}',
    col_7_uuid UUID NOT NULL,
    col_8_double_precision DOUBLE PRECISION NOT NULL,
    col_9_date DATE,
    col_10_text TEXT DEFAULT '',
    col_11_cidr CIDR NOT NULL,
    col_12_macaddr MACADDR,
    col_13_text TEXT NOT NULL,
    col_14_boolean BOOLEAN NOT NULL,
    col_15_cidr CIDR
);
CREATE INDEX idx_table_043_col5_1 ON table_043 (col_5_date);
CREATE INDEX idx_table_043_col7_2 ON table_043 (col_7_uuid);

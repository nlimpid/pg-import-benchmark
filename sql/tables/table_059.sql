CREATE TABLE IF NOT EXISTS table_059 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT,
    col_2_inet INET,
    col_3_boolean BOOLEAN NOT NULL,
    col_4_boolean BOOLEAN,
    col_5_double_precision DOUBLE PRECISION,
    col_6_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_7_jsonb JSONB DEFAULT '{}',
    col_8_uuid UUID,
    col_9_json JSON,
    col_10_uuid UUID NOT NULL,
    col_11_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_12_timestamp TIMESTAMP NOT NULL,
    col_13_boolean BOOLEAN NOT NULL
);
CREATE INDEX idx_table_059_col7 ON table_059 (col_7_boolean);
CREATE INDEX idx_table_059_col1 ON table_059 (col_1_text);
CREATE INDEX idx_table_059_col7 ON table_059 (col_7_double_precision);
CREATE INDEX idx_table_059_col7 ON table_059 (col_7_numeric_15_4_);

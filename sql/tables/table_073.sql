CREATE TABLE IF NOT EXISTS table_073 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME NOT NULL,
    col_2_text TEXT,
    col_3_inet INET NOT NULL,
    col_4_bytea BYTEA,
    col_5_macaddr MACADDR,
    col_6_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_7_timestamp TIMESTAMP NOT NULL,
    col_8_time TIME,
    col_9_char_10_ CHAR(10),
    col_10_uuid UUID,
    col_11_real REAL,
    col_12_real REAL,
    col_13_real REAL
);
CREATE INDEX idx_table_073_col1 ON table_073 (col_1_char_10_);
CREATE INDEX idx_table_073_col1 ON table_073 (col_1_bigint);
CREATE INDEX idx_table_073_col7 ON table_073 (col_7_bigint);
CREATE INDEX idx_table_073_col3 ON table_073 (col_3_boolean);

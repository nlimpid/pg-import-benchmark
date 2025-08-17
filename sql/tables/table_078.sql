CREATE TABLE IF NOT EXISTS table_078 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON,
    col_2_timestamp TIMESTAMP,
    col_3_char_10_ CHAR(10),
    col_4_time TIME NOT NULL,
    col_5_bytea BYTEA,
    col_6_bytea BYTEA,
    col_7_integer INTEGER NOT NULL DEFAULT 0,
    col_8_integer INTEGER NOT NULL DEFAULT 0,
    col_9_macaddr MACADDR,
    col_10_inet INET NOT NULL,
    col_11_char_10_ CHAR(10)
);
CREATE INDEX idx_table_078_col8_1 ON table_078 (col_8_integer);
CREATE INDEX idx_table_078_col7_2 ON table_078 (col_7_integer);
CREATE INDEX idx_table_078_col2_3 ON table_078 (col_2_timestamp);
ALTER TABLE table_078 ADD CONSTRAINT uk_table_078_col10 UNIQUE (col_10_inet);

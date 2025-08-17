CREATE TABLE IF NOT EXISTS table_047 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_real REAL NOT NULL,
    col_3_text TEXT DEFAULT '',
    col_4_inet INET,
    col_5_text TEXT,
    col_6_bigint BIGINT,
    col_7_varchar_255_ VARCHAR(255) NOT NULL DEFAULT '',
    col_8_inet INET NOT NULL,
    col_9_integer INTEGER NOT NULL,
    col_10_time TIME NOT NULL
);
CREATE INDEX idx_table_047_col9_1 ON table_047 (col_9_integer);
CREATE INDEX idx_table_047_col9_2 ON table_047 (col_9_integer);
CREATE INDEX idx_table_047_col6_3 ON table_047 (col_6_bigint);
ALTER TABLE table_047 ADD CONSTRAINT uk_table_047_col6 UNIQUE (col_6_bigint);

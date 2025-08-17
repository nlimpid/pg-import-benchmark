CREATE TABLE IF NOT EXISTS table_037 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_json JSON DEFAULT '{}',
    col_3_json JSON NOT NULL DEFAULT '{}',
    col_4_real REAL,
    col_5_bigint BIGINT DEFAULT 0,
    col_6_bytea BYTEA
);
CREATE INDEX idx_table_037_col4_1 ON table_037 (col_4_real);
CREATE INDEX idx_table_037_col4_2 ON table_037 (col_4_real);
ALTER TABLE table_037 ADD CONSTRAINT uk_table_037_col5 UNIQUE (col_5_bigint);

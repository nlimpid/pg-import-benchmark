CREATE TABLE IF NOT EXISTS table_081 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON,
    col_2_bytea BYTEA,
    col_3_date DATE,
    col_4_jsonb JSONB,
    col_5_double_precision DOUBLE PRECISION NOT NULL,
    col_6_timestamp TIMESTAMP,
    col_7_time TIME
);
CREATE INDEX idx_table_081_col2_1 ON table_081 (col_2_bytea);
CREATE INDEX idx_table_081_col4_2_gin ON table_081 USING GIN (col_4_jsonb);
CREATE INDEX idx_table_081_col5_3 ON table_081 (col_5_double_precision);
ALTER TABLE table_081 ADD CONSTRAINT uk_table_081_col6 UNIQUE (col_6_timestamp);

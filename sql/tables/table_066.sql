CREATE TABLE IF NOT EXISTS table_066 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_json JSON,
    col_3_real REAL,
    col_4_macaddr MACADDR NOT NULL,
    col_5_real REAL,
    col_6_macaddr MACADDR,
    col_7_jsonb JSONB,
    col_8_boolean BOOLEAN
);
CREATE INDEX idx_table_066_col7_2_gin ON table_066 USING GIN (col_7_jsonb);
CREATE INDEX idx_table_066_col1_3 ON table_066 (col_1_date);
ALTER TABLE table_066 ADD CONSTRAINT uk_table_066_col1 UNIQUE (col_1_date);

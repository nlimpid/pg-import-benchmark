CREATE TABLE IF NOT EXISTS table_061 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN,
    col_2_macaddr MACADDR,
    col_3_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_4_real REAL,
    col_5_jsonb JSONB NOT NULL DEFAULT '{}',
    col_6_bigint BIGINT
);
CREATE INDEX idx_table_061_col6_1 ON table_061 (col_6_bigint);
CREATE INDEX idx_table_061_col6_2 ON table_061 (col_6_bigint);
CREATE INDEX idx_table_061_col1_3 ON table_061 (col_1_boolean);
CREATE INDEX idx_table_061_col2_4 ON table_061 (col_2_macaddr);
ALTER TABLE table_061 ADD CONSTRAINT uk_table_061_col6 UNIQUE (col_6_bigint);

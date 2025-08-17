CREATE TABLE IF NOT EXISTS table_046 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_date DATE DEFAULT CURRENT_DATE,
    col_3_varchar_255_ VARCHAR(255),
    col_4_uuid UUID NOT NULL,
    col_5_cidr CIDR NOT NULL,
    col_6_real REAL,
    col_7_uuid UUID,
    col_8_text TEXT DEFAULT '',
    col_9_inet INET
);
CREATE INDEX idx_table_046_col9_1 ON table_046 (col_9_inet);
CREATE INDEX idx_table_046_col8_2 ON table_046 (col_8_text);
CREATE INDEX idx_table_046_col7_3 ON table_046 (col_7_uuid);
CREATE INDEX idx_table_046_col4_4 ON table_046 (col_4_uuid);
ALTER TABLE table_046 ADD CONSTRAINT uk_table_046_col7 UNIQUE (col_7_uuid);

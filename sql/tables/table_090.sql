CREATE TABLE IF NOT EXISTS table_090 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET NOT NULL,
    col_2_time TIME,
    col_3_uuid UUID,
    col_4_uuid UUID,
    col_5_date DATE,
    col_6_real REAL NOT NULL,
    col_7_char_10_ CHAR(10) DEFAULT ''
);
CREATE INDEX idx_table_090_col6_1 ON table_090 (col_6_real);
CREATE INDEX idx_table_090_col6_2 ON table_090 (col_6_real);
CREATE INDEX idx_table_090_col4_3 ON table_090 (col_4_uuid);
CREATE INDEX idx_table_090_col6_4 ON table_090 (col_6_real);

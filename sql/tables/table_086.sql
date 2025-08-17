CREATE TABLE IF NOT EXISTS table_086 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT NOT NULL,
    col_2_varchar_255_ VARCHAR(255) NOT NULL,
    col_3_varchar_255_ VARCHAR(255) DEFAULT '',
    col_4_uuid UUID,
    col_5_varchar_255_ VARCHAR(255) DEFAULT '',
    col_6_time TIME NOT NULL
);
CREATE INDEX idx_table_086_col4_1 ON table_086 (col_4_uuid);
CREATE INDEX idx_table_086_col3_2 ON table_086 (col_3_varchar_255_);
CREATE INDEX idx_table_086_col6_3 ON table_086 (col_6_time);
CREATE INDEX idx_table_086_col4_4 ON table_086 (col_4_uuid);

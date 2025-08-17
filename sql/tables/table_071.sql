CREATE TABLE IF NOT EXISTS table_071 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE DEFAULT CURRENT_DATE,
    col_2_macaddr MACADDR,
    col_3_cidr CIDR NOT NULL,
    col_4_json JSON,
    col_5_json JSON,
    col_6_bigint BIGINT
);
CREATE INDEX idx_table_071_col1_1 ON table_071 (col_1_date);

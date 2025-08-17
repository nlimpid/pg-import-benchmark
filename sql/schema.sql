CREATE TABLE IF NOT EXISTS table_001 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_bigint BIGINT NOT NULL DEFAULT 0,
    col_3_boolean BOOLEAN DEFAULT false,
    col_4_date DATE DEFAULT CURRENT_DATE,
    col_5_real REAL,
    col_6_real REAL,
    col_7_inet INET
);
CREATE INDEX idx_table_001_col6_1 ON table_001 (col_6_real);
CREATE INDEX idx_table_001_col4_2 ON table_001 (col_4_date);
CREATE INDEX idx_table_001_col5_3 ON table_001 (col_5_real);
CREATE TABLE IF NOT EXISTS table_002 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT NOT NULL,
    col_2_char_10_ CHAR(10) NOT NULL,
    col_3_bigint BIGINT NOT NULL,
    col_4_decimal_10_2_ DECIMAL(10,2),
    col_5_real REAL,
    col_6_timestamp TIMESTAMP NOT NULL,
    col_7_time TIME,
    col_8_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    col_9_integer INTEGER,
    col_10_json JSON
);
CREATE INDEX idx_table_002_col9_1 ON table_002 (col_9_integer);
CREATE INDEX idx_table_002_col1_2 ON table_002 (col_1_bigint);
CREATE TABLE IF NOT EXISTS table_003 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_inet INET,
    col_3_jsonb JSONB NOT NULL,
    col_4_cidr CIDR,
    col_5_macaddr MACADDR,
    col_6_text TEXT NOT NULL,
    col_7_text TEXT NOT NULL DEFAULT '',
    col_8_date DATE,
    col_9_cidr CIDR,
    col_10_char_10_ CHAR(10),
    col_11_real REAL,
    col_12_numeric_15_4_ NUMERIC(15,4),
    col_13_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_003_col1_1 ON table_003 (col_1_bytea);
CREATE INDEX idx_table_003_col7_2 ON table_003 (col_7_text);
CREATE INDEX idx_table_003_col3_3_gin ON table_003 USING GIN (col_3_jsonb);
CREATE INDEX idx_table_003_col2_4 ON table_003 (col_2_inet);
ALTER TABLE table_003 ADD CONSTRAINT uk_table_003_col13 UNIQUE (col_13_numeric_15_4_);
CREATE TABLE IF NOT EXISTS table_004 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_real REAL,
    col_3_real REAL,
    col_4_json JSON,
    col_5_time TIME,
    col_6_uuid UUID,
    col_7_boolean BOOLEAN NOT NULL DEFAULT false,
    col_8_inet INET,
    col_9_json JSON NOT NULL,
    col_10_cidr CIDR,
    col_11_integer INTEGER,
    col_12_real REAL
);
CREATE INDEX idx_table_004_col8_1 ON table_004 (col_8_inet);
CREATE INDEX idx_table_004_col2_2 ON table_004 (col_2_real);
CREATE INDEX idx_table_004_col2_3 ON table_004 (col_2_real);
CREATE TABLE IF NOT EXISTS table_005 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_uuid UUID,
    col_4_boolean BOOLEAN NOT NULL,
    col_5_inet INET,
    col_6_jsonb JSONB DEFAULT '{}',
    col_7_char_10_ CHAR(10),
    col_8_bigint BIGINT,
    col_9_timestamp TIMESTAMP
);
CREATE INDEX idx_table_005_col5_1 ON table_005 (col_5_inet);
CREATE INDEX idx_table_005_col4_2 ON table_005 (col_4_boolean);
CREATE TABLE IF NOT EXISTS table_006 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_uuid UUID,
    col_2_decimal_10_2_ DECIMAL(10,2),
    col_3_char_10_ CHAR(10) DEFAULT '',
    col_4_double_precision DOUBLE PRECISION,
    col_5_timestamp TIMESTAMP NOT NULL,
    col_6_cidr CIDR,
    col_7_real REAL,
    col_8_date DATE,
    col_9_date DATE NOT NULL,
    col_10_decimal_10_2_ DECIMAL(10,2)
);
CREATE INDEX idx_table_006_col9_1 ON table_006 (col_9_date);
CREATE INDEX idx_table_006_col6_2 ON table_006 (col_6_cidr);
CREATE INDEX idx_table_006_col10_3 ON table_006 (col_10_decimal_10_2_);
CREATE TABLE IF NOT EXISTS table_007 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT,
    col_2_timestamp TIMESTAMP,
    col_3_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    col_4_uuid UUID,
    col_5_double_precision DOUBLE PRECISION,
    col_6_double_precision DOUBLE PRECISION,
    col_7_timestamp TIMESTAMP,
    col_8_boolean BOOLEAN DEFAULT false,
    col_9_integer INTEGER DEFAULT 0,
    col_10_text TEXT DEFAULT '',
    col_11_text TEXT,
    col_12_jsonb JSONB,
    col_13_double_precision DOUBLE PRECISION
);
CREATE INDEX idx_table_007_col7_1 ON table_007 (col_7_timestamp);
CREATE INDEX idx_table_007_col11_2 ON table_007 (col_11_text);
CREATE INDEX idx_table_007_col2_3 ON table_007 (col_2_timestamp);
CREATE INDEX idx_table_007_col2_4 ON table_007 (col_2_timestamp);
CREATE TABLE IF NOT EXISTS table_008 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_macaddr MACADDR,
    col_3_macaddr MACADDR,
    col_4_bytea BYTEA,
    col_5_macaddr MACADDR,
    col_6_integer INTEGER DEFAULT 0,
    col_7_bigint BIGINT,
    col_8_bytea BYTEA,
    col_9_bytea BYTEA,
    col_10_double_precision DOUBLE PRECISION,
    col_11_real REAL,
    col_12_real REAL
);
CREATE INDEX idx_table_008_col7_1 ON table_008 (col_7_bigint);
CREATE INDEX idx_table_008_col1_2 ON table_008 (col_1_inet);
CREATE TABLE IF NOT EXISTS table_009 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10),
    col_2_double_precision DOUBLE PRECISION NOT NULL,
    col_3_bigint BIGINT,
    col_4_time TIME NOT NULL,
    col_5_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_6_json JSON,
    col_7_time TIME,
    col_8_integer INTEGER DEFAULT 0
);
CREATE INDEX idx_table_009_col2_1 ON table_009 (col_2_double_precision);
CREATE INDEX idx_table_009_col2_3 ON table_009 (col_2_double_precision);
ALTER TABLE table_009 ADD CONSTRAINT uk_table_009_col8 UNIQUE (col_8_integer);
CREATE TABLE IF NOT EXISTS table_010 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255) DEFAULT '',
    col_2_bytea BYTEA,
    col_3_bytea BYTEA,
    col_4_integer INTEGER,
    col_5_integer INTEGER,
    col_6_numeric_15_4_ NUMERIC(15,4),
    col_7_real REAL NOT NULL
);
CREATE INDEX idx_table_010_col1_1 ON table_010 (col_1_varchar_255_);
CREATE INDEX idx_table_010_col4_2 ON table_010 (col_4_integer);
CREATE INDEX idx_table_010_col1_3 ON table_010 (col_1_varchar_255_);
CREATE INDEX idx_table_010_col5_4 ON table_010 (col_5_integer);
CREATE TABLE IF NOT EXISTS table_011 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON,
    col_2_double_precision DOUBLE PRECISION,
    col_3_real REAL,
    col_4_char_10_ CHAR(10) NOT NULL,
    col_5_bytea BYTEA,
    col_6_integer INTEGER NOT NULL,
    col_7_inet INET,
    col_8_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_9_inet INET,
    col_10_integer INTEGER,
    col_11_uuid UUID NOT NULL,
    col_12_bytea BYTEA,
    col_13_numeric_15_4_ NUMERIC(15,4),
    col_14_bytea BYTEA NOT NULL
);
CREATE INDEX idx_table_011_col3_1 ON table_011 (col_3_real);
CREATE INDEX idx_table_011_col5_2 ON table_011 (col_5_bytea);
CREATE INDEX idx_table_011_col9_3 ON table_011 (col_9_inet);
ALTER TABLE table_011 ADD CONSTRAINT uk_table_011_col5 UNIQUE (col_5_bytea);
CREATE TABLE IF NOT EXISTS table_012 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_decimal_10_2_ DECIMAL(10,2),
    col_2_bigint BIGINT,
    col_3_time TIME,
    col_4_timestamp TIMESTAMP NOT NULL,
    col_5_macaddr MACADDR,
    col_6_char_10_ CHAR(10),
    col_7_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_8_macaddr MACADDR,
    col_9_timestamp TIMESTAMP NOT NULL,
    col_10_text TEXT,
    col_11_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_12_decimal_10_2_ DECIMAL(10,2),
    col_13_varchar_255_ VARCHAR(255) NOT NULL,
    col_14_bytea BYTEA NOT NULL,
    col_15_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_012_col6_1 ON table_012 (col_6_char_10_);
CREATE INDEX idx_table_012_col10_2 ON table_012 (col_10_text);
CREATE INDEX idx_table_012_col5_3 ON table_012 (col_5_macaddr);
CREATE INDEX idx_table_012_col15_4 ON table_012 (col_15_numeric_15_4_);
CREATE TABLE IF NOT EXISTS table_013 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER NOT NULL,
    col_2_integer INTEGER,
    col_3_char_10_ CHAR(10) DEFAULT '',
    col_4_text TEXT,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_bigint BIGINT,
    col_7_real REAL NOT NULL,
    col_8_cidr CIDR
);
CREATE INDEX idx_table_013_col8_1 ON table_013 (col_8_cidr);
CREATE INDEX idx_table_013_col5_2 ON table_013 (col_5_decimal_10_2_);
CREATE INDEX idx_table_013_col5_3 ON table_013 (col_5_decimal_10_2_);
CREATE INDEX idx_table_013_col8_4 ON table_013 (col_8_cidr);
ALTER TABLE table_013 ADD CONSTRAINT uk_table_013_col8 UNIQUE (col_8_cidr);
CREATE TABLE IF NOT EXISTS table_014 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255),
    col_2_cidr CIDR NOT NULL,
    col_3_numeric_15_4_ NUMERIC(15,4),
    col_4_numeric_15_4_ NUMERIC(15,4),
    col_5_text TEXT NOT NULL DEFAULT '',
    col_6_date DATE DEFAULT CURRENT_DATE
);
CREATE INDEX idx_table_014_col5_1 ON table_014 (col_5_text);
CREATE INDEX idx_table_014_col4_2 ON table_014 (col_4_numeric_15_4_);
CREATE TABLE IF NOT EXISTS table_015 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT,
    col_2_cidr CIDR NOT NULL,
    col_3_real REAL,
    col_4_date DATE DEFAULT CURRENT_DATE,
    col_5_json JSON,
    col_6_json JSON NOT NULL,
    col_7_inet INET,
    col_8_cidr CIDR,
    col_9_char_10_ CHAR(10),
    col_10_boolean BOOLEAN,
    col_11_char_10_ CHAR(10) DEFAULT '',
    col_12_time TIME
);
CREATE INDEX idx_table_015_col8_1 ON table_015 (col_8_cidr);
ALTER TABLE table_015 ADD CONSTRAINT uk_table_015_col11 UNIQUE (col_11_char_10_);
CREATE TABLE IF NOT EXISTS table_016 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN NOT NULL,
    col_2_date DATE DEFAULT CURRENT_DATE,
    col_3_timestamp TIMESTAMP NOT NULL,
    col_4_json JSON,
    col_5_integer INTEGER NOT NULL,
    col_6_inet INET
);
CREATE INDEX idx_table_016_col6_2 ON table_016 (col_6_inet);
CREATE INDEX idx_table_016_col2_4 ON table_016 (col_2_date);
ALTER TABLE table_016 ADD CONSTRAINT uk_table_016_col1 UNIQUE (col_1_boolean);
CREATE TABLE IF NOT EXISTS table_017 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_cidr CIDR,
    col_2_boolean BOOLEAN DEFAULT false,
    col_3_macaddr MACADDR NOT NULL,
    col_4_decimal_10_2_ DECIMAL(10,2),
    col_5_text TEXT DEFAULT '',
    col_6_integer INTEGER NOT NULL,
    col_7_json JSON,
    col_8_json JSON,
    col_9_real REAL NOT NULL,
    col_10_varchar_255_ VARCHAR(255)
);
CREATE INDEX idx_table_017_col10_1 ON table_017 (col_10_varchar_255_);
CREATE INDEX idx_table_017_col1_2 ON table_017 (col_1_cidr);
CREATE INDEX idx_table_017_col5_3 ON table_017 (col_5_text);
CREATE INDEX idx_table_017_col6_4 ON table_017 (col_6_integer);
CREATE TABLE IF NOT EXISTS table_018 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_cidr CIDR,
    col_3_json JSON NOT NULL,
    col_4_cidr CIDR,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_bytea BYTEA NOT NULL,
    col_7_bigint BIGINT,
    col_8_double_precision DOUBLE PRECISION,
    col_9_uuid UUID,
    col_10_macaddr MACADDR,
    col_11_integer INTEGER DEFAULT 0,
    col_12_boolean BOOLEAN DEFAULT false,
    col_13_boolean BOOLEAN,
    col_14_integer INTEGER DEFAULT 0
);
CREATE INDEX idx_table_018_col1_1 ON table_018 (col_1_time);
CREATE INDEX idx_table_018_col8_2 ON table_018 (col_8_double_precision);
CREATE TABLE IF NOT EXISTS table_019 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER NOT NULL,
    col_2_jsonb JSONB DEFAULT '{}',
    col_3_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_4_bigint BIGINT,
    col_5_real REAL,
    col_6_bytea BYTEA,
    col_7_numeric_15_4_ NUMERIC(15,4),
    col_8_decimal_10_2_ DECIMAL(10,2),
    col_9_text TEXT NOT NULL,
    col_10_varchar_255_ VARCHAR(255) NOT NULL,
    col_11_double_precision DOUBLE PRECISION NOT NULL,
    col_12_json JSON NOT NULL,
    col_13_time TIME NOT NULL,
    col_14_integer INTEGER DEFAULT 0,
    col_15_jsonb JSONB
);
CREATE INDEX idx_table_019_col3_1 ON table_019 (col_3_date);
CREATE INDEX idx_table_019_col15_3_gin ON table_019 USING GIN (col_15_jsonb);
CREATE INDEX idx_table_019_col14_4 ON table_019 (col_14_integer);
CREATE TABLE IF NOT EXISTS table_020 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_uuid UUID,
    col_3_varchar_255_ VARCHAR(255) NOT NULL,
    col_4_inet INET NOT NULL,
    col_5_char_10_ CHAR(10) NOT NULL,
    col_6_char_10_ CHAR(10),
    col_7_bytea BYTEA,
    col_8_decimal_10_2_ DECIMAL(10,2) NOT NULL
);
CREATE INDEX idx_table_020_col2_1 ON table_020 (col_2_uuid);
CREATE INDEX idx_table_020_col6_2 ON table_020 (col_6_char_10_);
CREATE TABLE IF NOT EXISTS table_021 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_timestamp TIMESTAMP,
    col_3_bigint BIGINT NOT NULL DEFAULT 0,
    col_4_uuid UUID,
    col_5_uuid UUID,
    col_6_cidr CIDR
);
CREATE INDEX idx_table_021_col6_1 ON table_021 (col_6_cidr);
CREATE INDEX idx_table_021_col1_2 ON table_021 (col_1_double_precision);
CREATE INDEX idx_table_021_col1_3 ON table_021 (col_1_double_precision);
CREATE TABLE IF NOT EXISTS table_022 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255) DEFAULT '',
    col_2_timestamp TIMESTAMP,
    col_3_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_4_integer INTEGER DEFAULT 0,
    col_5_integer INTEGER NOT NULL,
    col_6_boolean BOOLEAN NOT NULL,
    col_7_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_8_bigint BIGINT DEFAULT 0,
    col_9_inet INET,
    col_10_char_10_ CHAR(10),
    col_11_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_022_col4_1 ON table_022 (col_4_integer);
CREATE INDEX idx_table_022_col3_2 ON table_022 (col_3_decimal_10_2_);
CREATE INDEX idx_table_022_col2_3 ON table_022 (col_2_timestamp);
CREATE TABLE IF NOT EXISTS table_023 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR NOT NULL,
    col_2_char_10_ CHAR(10) DEFAULT '',
    col_3_numeric_15_4_ NUMERIC(15,4),
    col_4_bytea BYTEA,
    col_5_numeric_15_4_ NUMERIC(15,4) NOT NULL
);
CREATE INDEX idx_table_023_col3_1 ON table_023 (col_3_numeric_15_4_);
CREATE INDEX idx_table_023_col2_2 ON table_023 (col_2_char_10_);
CREATE INDEX idx_table_023_col5_3 ON table_023 (col_5_numeric_15_4_);
CREATE TABLE IF NOT EXISTS table_024 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER,
    col_2_uuid UUID,
    col_3_date DATE,
    col_4_time TIME NOT NULL,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_date DATE
);
CREATE INDEX idx_table_024_col2_1 ON table_024 (col_2_uuid);
CREATE INDEX idx_table_024_col2_2 ON table_024 (col_2_uuid);
CREATE TABLE IF NOT EXISTS table_025 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10),
    col_2_bytea BYTEA,
    col_3_time TIME,
    col_4_time TIME,
    col_5_inet INET NOT NULL,
    col_6_double_precision DOUBLE PRECISION,
    col_7_timestamp TIMESTAMP,
    col_8_date DATE,
    col_9_integer INTEGER,
    col_10_bigint BIGINT,
    col_11_char_10_ CHAR(10) DEFAULT '',
    col_12_bytea BYTEA NOT NULL,
    col_13_bigint BIGINT,
    col_14_text TEXT DEFAULT '',
    col_15_inet INET
);
CREATE INDEX idx_table_025_col12_1 ON table_025 (col_12_bytea);
CREATE INDEX idx_table_025_col3_2 ON table_025 (col_3_time);
CREATE TABLE IF NOT EXISTS table_026 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB,
    col_2_date DATE,
    col_3_date DATE,
    col_4_macaddr MACADDR,
    col_5_text TEXT,
    col_6_date DATE,
    col_7_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_8_bigint BIGINT,
    col_9_cidr CIDR NOT NULL,
    col_10_cidr CIDR NOT NULL,
    col_11_macaddr MACADDR,
    col_12_integer INTEGER DEFAULT 0,
    col_13_bigint BIGINT
);
CREATE INDEX idx_table_026_col9_1 ON table_026 (col_9_cidr);
CREATE INDEX idx_table_026_col8_2 ON table_026 (col_8_bigint);
CREATE INDEX idx_table_026_col10_3 ON table_026 (col_10_cidr);
CREATE TABLE IF NOT EXISTS table_027 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_real REAL NOT NULL,
    col_4_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_cidr CIDR NOT NULL,
    col_7_cidr CIDR,
    col_8_varchar_255_ VARCHAR(255) DEFAULT '',
    col_9_integer INTEGER NOT NULL DEFAULT 0
);
CREATE INDEX idx_table_027_col2_1 ON table_027 (col_2_numeric_15_4_);
CREATE INDEX idx_table_027_col5_2 ON table_027 (col_5_numeric_15_4_);
CREATE INDEX idx_table_027_col2_3 ON table_027 (col_2_numeric_15_4_);
CREATE TABLE IF NOT EXISTS table_028 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_timestamp TIMESTAMP NOT NULL,
    col_3_macaddr MACADDR,
    col_4_text TEXT NOT NULL,
    col_5_boolean BOOLEAN NOT NULL DEFAULT false,
    col_6_integer INTEGER NOT NULL DEFAULT 0,
    col_7_json JSON NOT NULL DEFAULT '{}',
    col_8_jsonb JSONB NOT NULL,
    col_9_cidr CIDR,
    col_10_boolean BOOLEAN
);
CREATE INDEX idx_table_028_col2_1 ON table_028 (col_2_timestamp);
CREATE INDEX idx_table_028_col3_2 ON table_028 (col_3_macaddr);
CREATE INDEX idx_table_028_col3_3 ON table_028 (col_3_macaddr);
CREATE INDEX idx_table_028_col1_4 ON table_028 (col_1_macaddr);
CREATE TABLE IF NOT EXISTS table_029 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON,
    col_2_macaddr MACADDR,
    col_3_json JSON,
    col_4_json JSON,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_bytea BYTEA,
    col_7_boolean BOOLEAN DEFAULT false,
    col_8_varchar_255_ VARCHAR(255) NOT NULL DEFAULT '',
    col_9_char_10_ CHAR(10) NOT NULL,
    col_10_numeric_15_4_ NUMERIC(15,4),
    col_11_bytea BYTEA NOT NULL,
    col_12_char_10_ CHAR(10),
    col_13_char_10_ CHAR(10)
);
CREATE INDEX idx_table_029_col6_1 ON table_029 (col_6_bytea);
CREATE INDEX idx_table_029_col8_3 ON table_029 (col_8_varchar_255_);
CREATE TABLE IF NOT EXISTS table_030 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA NOT NULL,
    col_2_text TEXT DEFAULT '',
    col_3_date DATE DEFAULT CURRENT_DATE,
    col_4_cidr CIDR,
    col_5_inet INET,
    col_6_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_7_timestamp TIMESTAMP,
    col_8_bigint BIGINT NOT NULL DEFAULT 0,
    col_9_real REAL,
    col_10_integer INTEGER NOT NULL DEFAULT 0,
    col_11_uuid UUID NOT NULL,
    col_12_inet INET
);
CREATE INDEX idx_table_030_col2_1 ON table_030 (col_2_text);
CREATE INDEX idx_table_030_col9_2 ON table_030 (col_9_real);
CREATE INDEX idx_table_030_col10_3 ON table_030 (col_10_integer);
CREATE TABLE IF NOT EXISTS table_031 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT DEFAULT '',
    col_2_double_precision DOUBLE PRECISION,
    col_3_time TIME NOT NULL,
    col_4_json JSON,
    col_5_bigint BIGINT NOT NULL,
    col_6_real REAL,
    col_7_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_8_double_precision DOUBLE PRECISION NOT NULL
);
CREATE INDEX idx_table_031_col1_1 ON table_031 (col_1_text);
CREATE INDEX idx_table_031_col8_2 ON table_031 (col_8_double_precision);
ALTER TABLE table_031 ADD CONSTRAINT uk_table_031_col2 UNIQUE (col_2_double_precision);
CREATE TABLE IF NOT EXISTS table_032 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_2_boolean BOOLEAN DEFAULT false,
    col_3_double_precision DOUBLE PRECISION NOT NULL,
    col_4_boolean BOOLEAN,
    col_5_char_10_ CHAR(10),
    col_6_jsonb JSONB NOT NULL,
    col_7_macaddr MACADDR,
    col_8_decimal_10_2_ DECIMAL(10,2),
    col_9_bytea BYTEA NOT NULL,
    col_10_bytea BYTEA,
    col_11_json JSON,
    col_12_date DATE NOT NULL,
    col_13_jsonb JSONB NOT NULL,
    col_14_cidr CIDR,
    col_15_cidr CIDR
);
CREATE INDEX idx_table_032_col13_1_gin ON table_032 USING GIN (col_13_jsonb);
CREATE INDEX idx_table_032_col13_2_gin ON table_032 USING GIN (col_13_jsonb);
CREATE INDEX idx_table_032_col2_3 ON table_032 (col_2_boolean);
CREATE INDEX idx_table_032_col5_4 ON table_032 (col_5_char_10_);
CREATE TABLE IF NOT EXISTS table_033 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_text TEXT DEFAULT '',
    col_3_bigint BIGINT NOT NULL,
    col_4_uuid UUID,
    col_5_time TIME NOT NULL,
    col_6_char_10_ CHAR(10),
    col_7_real REAL NOT NULL,
    col_8_decimal_10_2_ DECIMAL(10,2) NOT NULL
);
CREATE INDEX idx_table_033_col5_1 ON table_033 (col_5_time);
CREATE INDEX idx_table_033_col8_2 ON table_033 (col_8_decimal_10_2_);
CREATE INDEX idx_table_033_col6_3 ON table_033 (col_6_char_10_);
CREATE INDEX idx_table_033_col3_4 ON table_033 (col_3_bigint);
CREATE TABLE IF NOT EXISTS table_034 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10),
    col_2_double_precision DOUBLE PRECISION NOT NULL,
    col_3_bytea BYTEA NOT NULL,
    col_4_bigint BIGINT NOT NULL,
    col_5_inet INET,
    col_6_cidr CIDR NOT NULL,
    col_7_inet INET
);
CREATE INDEX idx_table_034_col4_1 ON table_034 (col_4_bigint);
CREATE INDEX idx_table_034_col5_2 ON table_034 (col_5_inet);
CREATE INDEX idx_table_034_col2_3 ON table_034 (col_2_double_precision);
CREATE TABLE IF NOT EXISTS table_035 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT NOT NULL,
    col_2_json JSON NOT NULL DEFAULT '{}',
    col_3_real REAL NOT NULL,
    col_4_bytea BYTEA,
    col_5_time TIME,
    col_6_decimal_10_2_ DECIMAL(10,2),
    col_7_boolean BOOLEAN NOT NULL,
    col_8_real REAL,
    col_9_real REAL,
    col_10_bytea BYTEA,
    col_11_uuid UUID,
    col_12_bytea BYTEA,
    col_13_varchar_255_ VARCHAR(255),
    col_14_varchar_255_ VARCHAR(255)
);
CREATE INDEX idx_table_035_col8_1 ON table_035 (col_8_real);
CREATE INDEX idx_table_035_col1_2 ON table_035 (col_1_text);
CREATE INDEX idx_table_035_col14_3 ON table_035 (col_14_varchar_255_);
CREATE TABLE IF NOT EXISTS table_036 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB DEFAULT '{}',
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_time TIME NOT NULL,
    col_4_time TIME,
    col_5_text TEXT NOT NULL DEFAULT '',
    col_6_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_7_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_8_bigint BIGINT NOT NULL,
    col_9_cidr CIDR,
    col_10_numeric_15_4_ NUMERIC(15,4),
    col_11_inet INET,
    col_12_date DATE,
    col_13_inet INET,
    col_14_varchar_255_ VARCHAR(255),
    col_15_time TIME
);
CREATE INDEX idx_table_036_col11_1 ON table_036 (col_11_inet);
CREATE INDEX idx_table_036_col12_2 ON table_036 (col_12_date);
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
CREATE TABLE IF NOT EXISTS table_038 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bigint BIGINT,
    col_2_json JSON DEFAULT '{}',
    col_3_json JSON DEFAULT '{}',
    col_4_timestamp TIMESTAMP,
    col_5_char_10_ CHAR(10),
    col_6_char_10_ CHAR(10),
    col_7_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_8_real REAL,
    col_9_integer INTEGER,
    col_10_inet INET,
    col_11_text TEXT
);
CREATE INDEX idx_table_038_col9_1 ON table_038 (col_9_integer);
CREATE INDEX idx_table_038_col8_2 ON table_038 (col_8_real);
CREATE INDEX idx_table_038_col11_3 ON table_038 (col_11_text);
ALTER TABLE table_038 ADD CONSTRAINT uk_table_038_col11 UNIQUE (col_11_text);
CREATE TABLE IF NOT EXISTS table_039 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON DEFAULT '{}',
    col_2_time TIME NOT NULL,
    col_3_bytea BYTEA,
    col_4_text TEXT,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_char_10_ CHAR(10) NOT NULL
);
CREATE INDEX idx_table_039_col3_3 ON table_039 (col_3_bytea);
CREATE TABLE IF NOT EXISTS table_040 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_jsonb JSONB DEFAULT '{}',
    col_2_time TIME NOT NULL,
    col_3_double_precision DOUBLE PRECISION,
    col_4_jsonb JSONB DEFAULT '{}',
    col_5_date DATE DEFAULT CURRENT_DATE,
    col_6_time TIME,
    col_7_date DATE DEFAULT CURRENT_DATE,
    col_8_macaddr MACADDR,
    col_9_time TIME,
    col_10_varchar_255_ VARCHAR(255) NOT NULL DEFAULT ''
);
CREATE INDEX idx_table_040_col9_1 ON table_040 (col_9_time);
CREATE INDEX idx_table_040_col5_2 ON table_040 (col_5_date);
CREATE INDEX idx_table_040_col4_3_gin ON table_040 USING GIN (col_4_jsonb);
CREATE TABLE IF NOT EXISTS table_041 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE DEFAULT CURRENT_DATE,
    col_2_integer INTEGER DEFAULT 0,
    col_3_macaddr MACADDR,
    col_4_timestamp TIMESTAMP,
    col_5_double_precision DOUBLE PRECISION NOT NULL,
    col_6_text TEXT,
    col_7_cidr CIDR,
    col_8_date DATE,
    col_9_bigint BIGINT NOT NULL,
    col_10_time TIME NOT NULL,
    col_11_inet INET NOT NULL,
    col_12_macaddr MACADDR,
    col_13_uuid UUID NOT NULL,
    col_14_boolean BOOLEAN
);
CREATE INDEX idx_table_041_col13_1 ON table_041 (col_13_uuid);
CREATE INDEX idx_table_041_col13_2 ON table_041 (col_13_uuid);
CREATE TABLE IF NOT EXISTS table_042 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_cidr CIDR NOT NULL,
    col_2_inet INET,
    col_3_jsonb JSONB,
    col_4_varchar_255_ VARCHAR(255),
    col_5_text TEXT,
    col_6_jsonb JSONB NOT NULL,
    col_7_integer INTEGER NOT NULL,
    col_8_char_10_ CHAR(10),
    col_9_jsonb JSONB,
    col_10_macaddr MACADDR NOT NULL,
    col_11_uuid UUID NOT NULL,
    col_12_uuid UUID,
    col_13_bytea BYTEA,
    col_14_boolean BOOLEAN
);
CREATE INDEX idx_table_042_col11_1 ON table_042 (col_11_uuid);
CREATE INDEX idx_table_042_col6_2_gin ON table_042 USING GIN (col_6_jsonb);
CREATE INDEX idx_table_042_col8_3 ON table_042 (col_8_char_10_);
CREATE TABLE IF NOT EXISTS table_043 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255),
    col_2_varchar_255_ VARCHAR(255) DEFAULT '',
    col_3_numeric_15_4_ NUMERIC(15,4),
    col_4_date DATE,
    col_5_date DATE NOT NULL,
    col_6_jsonb JSONB DEFAULT '{}',
    col_7_uuid UUID NOT NULL,
    col_8_double_precision DOUBLE PRECISION NOT NULL,
    col_9_date DATE,
    col_10_text TEXT DEFAULT '',
    col_11_cidr CIDR NOT NULL,
    col_12_macaddr MACADDR,
    col_13_text TEXT NOT NULL,
    col_14_boolean BOOLEAN NOT NULL,
    col_15_cidr CIDR
);
CREATE INDEX idx_table_043_col5_1 ON table_043 (col_5_date);
CREATE INDEX idx_table_043_col7_2 ON table_043 (col_7_uuid);
CREATE TABLE IF NOT EXISTS table_044 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4),
    col_2_inet INET NOT NULL,
    col_3_double_precision DOUBLE PRECISION,
    col_4_bigint BIGINT,
    col_5_jsonb JSONB,
    col_6_boolean BOOLEAN
);
CREATE INDEX idx_table_044_col4_1 ON table_044 (col_4_bigint);
CREATE INDEX idx_table_044_col4_2 ON table_044 (col_4_bigint);
CREATE INDEX idx_table_044_col6_3 ON table_044 (col_6_boolean);
CREATE TABLE IF NOT EXISTS table_045 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4),
    col_2_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_3_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    col_4_inet INET NOT NULL,
    col_5_double_precision DOUBLE PRECISION NOT NULL,
    col_6_decimal_10_2_ DECIMAL(10,2),
    col_7_cidr CIDR,
    col_8_macaddr MACADDR,
    col_9_varchar_255_ VARCHAR(255)
);
CREATE INDEX idx_table_045_col4_1 ON table_045 (col_4_inet);
CREATE INDEX idx_table_045_col2_2 ON table_045 (col_2_numeric_15_4_);
CREATE INDEX idx_table_045_col9_3 ON table_045 (col_9_varchar_255_);
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
CREATE TABLE IF NOT EXISTS table_048 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT,
    col_2_time TIME,
    col_3_bigint BIGINT NOT NULL,
    col_4_time TIME,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_boolean BOOLEAN DEFAULT false,
    col_7_uuid UUID NOT NULL,
    col_8_char_10_ CHAR(10) NOT NULL,
    col_9_boolean BOOLEAN DEFAULT false,
    col_10_double_precision DOUBLE PRECISION NOT NULL,
    col_11_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_12_timestamp TIMESTAMP,
    col_13_bigint BIGINT NOT NULL,
    col_14_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_048_col4_1 ON table_048 (col_4_time);
CREATE INDEX idx_table_048_col10_2 ON table_048 (col_10_double_precision);
CREATE INDEX idx_table_048_col6_3 ON table_048 (col_6_boolean);
CREATE INDEX idx_table_048_col6_4 ON table_048 (col_6_boolean);
ALTER TABLE table_048 ADD CONSTRAINT uk_table_048_col11 UNIQUE (col_11_date);
CREATE TABLE IF NOT EXISTS table_049 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT NOT NULL DEFAULT '',
    col_2_bigint BIGINT,
    col_3_inet INET NOT NULL,
    col_4_char_10_ CHAR(10) DEFAULT '',
    col_5_real REAL,
    col_6_inet INET,
    col_7_jsonb JSONB,
    col_8_varchar_255_ VARCHAR(255),
    col_9_jsonb JSONB NOT NULL,
    col_10_time TIME,
    col_11_text TEXT NOT NULL,
    col_12_double_precision DOUBLE PRECISION,
    col_13_time TIME,
    col_14_numeric_15_4_ NUMERIC(15,4),
    col_15_bigint BIGINT DEFAULT 0
);
CREATE INDEX idx_table_049_col14_1 ON table_049 (col_14_numeric_15_4_);
CREATE INDEX idx_table_049_col2_2 ON table_049 (col_2_bigint);
CREATE TABLE IF NOT EXISTS table_050 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_uuid UUID,
    col_2_text TEXT,
    col_3_uuid UUID,
    col_4_time TIME,
    col_5_bytea BYTEA NOT NULL,
    col_6_date DATE NOT NULL,
    col_7_integer INTEGER,
    col_8_double_precision DOUBLE PRECISION
);
CREATE INDEX idx_table_050_col4_1 ON table_050 (col_4_time);
CREATE INDEX idx_table_050_col8_2 ON table_050 (col_8_double_precision);
CREATE INDEX idx_table_050_col2_3 ON table_050 (col_2_text);
CREATE INDEX idx_table_050_col8_4 ON table_050 (col_8_double_precision);
CREATE TABLE IF NOT EXISTS table_051 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_timestamp TIMESTAMP,
    col_2_inet INET NOT NULL,
    col_3_integer INTEGER NOT NULL,
    col_4_macaddr MACADDR,
    col_5_uuid UUID,
    col_6_macaddr MACADDR
);
CREATE INDEX idx_table_051_col4_1 ON table_051 (col_4_macaddr);
CREATE INDEX idx_table_051_col5_2 ON table_051 (col_5_uuid);
CREATE INDEX idx_table_051_col6_3 ON table_051 (col_6_macaddr);
CREATE INDEX idx_table_051_col5_4 ON table_051 (col_5_uuid);
CREATE TABLE IF NOT EXISTS table_052 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE DEFAULT CURRENT_DATE,
    col_2_date DATE NOT NULL,
    col_3_text TEXT NOT NULL,
    col_4_jsonb JSONB NOT NULL DEFAULT '{}',
    col_5_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_6_real REAL,
    col_7_cidr CIDR,
    col_8_jsonb JSONB NOT NULL,
    col_9_varchar_255_ VARCHAR(255) NOT NULL
);
CREATE INDEX idx_table_052_col7_1 ON table_052 (col_7_cidr);
CREATE INDEX idx_table_052_col4_2_gin ON table_052 USING GIN (col_4_jsonb);
CREATE TABLE IF NOT EXISTS table_053 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_text TEXT,
    col_4_macaddr MACADDR,
    col_5_date DATE,
    col_6_char_10_ CHAR(10) DEFAULT '',
    col_7_macaddr MACADDR
);
CREATE INDEX idx_table_053_col5_1 ON table_053 (col_5_date);
CREATE INDEX idx_table_053_col6_2 ON table_053 (col_6_char_10_);
CREATE TABLE IF NOT EXISTS table_054 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_time TIME,
    col_3_jsonb JSONB DEFAULT '{}',
    col_4_jsonb JSONB,
    col_5_double_precision DOUBLE PRECISION,
    col_6_time TIME NOT NULL,
    col_7_time TIME,
    col_8_cidr CIDR NOT NULL,
    col_9_uuid UUID,
    col_10_bigint BIGINT NOT NULL DEFAULT 0,
    col_11_timestamp TIMESTAMP,
    col_12_macaddr MACADDR,
    col_13_time TIME NOT NULL,
    col_14_char_10_ CHAR(10) NOT NULL
);
CREATE INDEX idx_table_054_col4_1_gin ON table_054 USING GIN (col_4_jsonb);
CREATE INDEX idx_table_054_col8_2 ON table_054 (col_8_cidr);
CREATE INDEX idx_table_054_col13_3 ON table_054 (col_13_time);
CREATE TABLE IF NOT EXISTS table_055 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_uuid UUID,
    col_2_bigint BIGINT,
    col_3_real REAL NOT NULL,
    col_4_date DATE DEFAULT CURRENT_DATE,
    col_5_char_10_ CHAR(10) NOT NULL,
    col_6_time TIME,
    col_7_json JSON NOT NULL DEFAULT '{}',
    col_8_char_10_ CHAR(10),
    col_9_macaddr MACADDR NOT NULL,
    col_10_boolean BOOLEAN DEFAULT false,
    col_11_char_10_ CHAR(10),
    col_12_double_precision DOUBLE PRECISION NOT NULL,
    col_13_numeric_15_4_ NUMERIC(15,4),
    col_14_char_10_ CHAR(10) NOT NULL,
    col_15_time TIME
);
CREATE INDEX idx_table_055_col3_1 ON table_055 (col_3_real);
CREATE INDEX idx_table_055_col8_2 ON table_055 (col_8_char_10_);
CREATE INDEX idx_table_055_col15_3 ON table_055 (col_15_time);
CREATE TABLE IF NOT EXISTS table_056 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_macaddr MACADDR,
    col_3_macaddr MACADDR NOT NULL,
    col_4_json JSON NOT NULL DEFAULT '{}',
    col_5_timestamp TIMESTAMP NOT NULL,
    col_6_double_precision DOUBLE PRECISION,
    col_7_macaddr MACADDR,
    col_8_text TEXT NOT NULL
);
CREATE INDEX idx_table_056_col2_1 ON table_056 (col_2_macaddr);
CREATE INDEX idx_table_056_col7_2 ON table_056 (col_7_macaddr);
CREATE INDEX idx_table_056_col7_3 ON table_056 (col_7_macaddr);
CREATE TABLE IF NOT EXISTS table_057 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_inet INET NOT NULL,
    col_3_jsonb JSONB,
    col_4_decimal_10_2_ DECIMAL(10,2),
    col_5_bytea BYTEA,
    col_6_json JSON,
    col_7_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_table_057_col7_1 ON table_057 (col_7_timestamp);
CREATE INDEX idx_table_057_col4_2 ON table_057 (col_4_decimal_10_2_);
CREATE INDEX idx_table_057_col5_3 ON table_057 (col_5_bytea);
ALTER TABLE table_057 ADD CONSTRAINT uk_table_057_col7 UNIQUE (col_7_timestamp);
CREATE TABLE IF NOT EXISTS table_058 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_varchar_255_ VARCHAR(255),
    col_3_numeric_15_4_ NUMERIC(15,4),
    col_4_date DATE,
    col_5_real REAL,
    col_6_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_7_real REAL,
    col_8_inet INET,
    col_9_jsonb JSONB,
    col_10_integer INTEGER,
    col_11_json JSON DEFAULT '{}',
    col_12_integer INTEGER NOT NULL,
    col_13_json JSON,
    col_14_numeric_15_4_ NUMERIC(15,4) NOT NULL
);
CREATE INDEX idx_table_058_col2_1 ON table_058 (col_2_varchar_255_);
CREATE INDEX idx_table_058_col9_3_gin ON table_058 USING GIN (col_9_jsonb);
CREATE TABLE IF NOT EXISTS table_059 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION NOT NULL,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_macaddr MACADDR NOT NULL,
    col_4_uuid UUID,
    col_5_varchar_255_ VARCHAR(255) DEFAULT '',
    col_6_macaddr MACADDR,
    col_7_inet INET,
    col_8_varchar_255_ VARCHAR(255) NOT NULL,
    col_9_bigint BIGINT NOT NULL,
    col_10_char_10_ CHAR(10),
    col_11_macaddr MACADDR NOT NULL,
    col_12_varchar_255_ VARCHAR(255),
    col_13_double_precision DOUBLE PRECISION NOT NULL,
    col_14_numeric_15_4_ NUMERIC(15,4),
    col_15_double_precision DOUBLE PRECISION
);
CREATE INDEX idx_table_059_col8_1 ON table_059 (col_8_varchar_255_);
CREATE INDEX idx_table_059_col7_2 ON table_059 (col_7_inet);
CREATE INDEX idx_table_059_col10_3 ON table_059 (col_10_char_10_);
CREATE INDEX idx_table_059_col9_4 ON table_059 (col_9_bigint);
CREATE TABLE IF NOT EXISTS table_060 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_timestamp TIMESTAMP,
    col_2_bigint BIGINT,
    col_3_jsonb JSONB NOT NULL,
    col_4_boolean BOOLEAN NOT NULL,
    col_5_cidr CIDR,
    col_6_time TIME,
    col_7_timestamp TIMESTAMP,
    col_8_json JSON DEFAULT '{}'
);
CREATE INDEX idx_table_060_col6_2 ON table_060 (col_6_time);
CREATE INDEX idx_table_060_col2_3 ON table_060 (col_2_bigint);
CREATE INDEX idx_table_060_col6_4 ON table_060 (col_6_time);
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
CREATE TABLE IF NOT EXISTS table_062 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_macaddr MACADDR,
    col_3_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_4_time TIME,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_double_precision DOUBLE PRECISION,
    col_7_real REAL,
    col_8_uuid UUID NOT NULL,
    col_9_macaddr MACADDR,
    col_10_cidr CIDR,
    col_11_inet INET NOT NULL
);
CREATE INDEX idx_table_062_col10_1 ON table_062 (col_10_cidr);
CREATE INDEX idx_table_062_col5_2 ON table_062 (col_5_decimal_10_2_);
CREATE INDEX idx_table_062_col3_3 ON table_062 (col_3_date);
ALTER TABLE table_062 ADD CONSTRAINT uk_table_062_col1 UNIQUE (col_1_date);
CREATE TABLE IF NOT EXISTS table_063 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_bytea BYTEA,
    col_3_jsonb JSONB,
    col_4_time TIME NOT NULL,
    col_5_timestamp TIMESTAMP,
    col_6_boolean BOOLEAN,
    col_7_double_precision DOUBLE PRECISION,
    col_8_macaddr MACADDR NOT NULL,
    col_9_bytea BYTEA NOT NULL,
    col_10_uuid UUID NOT NULL,
    col_11_date DATE DEFAULT CURRENT_DATE,
    col_12_real REAL,
    col_13_decimal_10_2_ DECIMAL(10,2),
    col_14_boolean BOOLEAN NOT NULL
);
CREATE INDEX idx_table_063_col11_1 ON table_063 (col_11_date);
CREATE INDEX idx_table_063_col4_2 ON table_063 (col_4_time);
CREATE INDEX idx_table_063_col12_3 ON table_063 (col_12_real);
CREATE TABLE IF NOT EXISTS table_064 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_timestamp TIMESTAMP,
    col_3_date DATE DEFAULT CURRENT_DATE,
    col_4_bytea BYTEA,
    col_5_jsonb JSONB,
    col_6_cidr CIDR,
    col_7_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_8_varchar_255_ VARCHAR(255) DEFAULT '',
    col_9_bytea BYTEA,
    col_10_cidr CIDR,
    col_11_inet INET NOT NULL,
    col_12_decimal_10_2_ DECIMAL(10,2),
    col_13_decimal_10_2_ DECIMAL(10,2),
    col_14_inet INET
);
CREATE INDEX idx_table_064_col13_1 ON table_064 (col_13_decimal_10_2_);
CREATE INDEX idx_table_064_col10_2 ON table_064 (col_10_cidr);
ALTER TABLE table_064 ADD CONSTRAINT uk_table_064_col3 UNIQUE (col_3_date);
CREATE TABLE IF NOT EXISTS table_065 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET NOT NULL,
    col_2_text TEXT DEFAULT '',
    col_3_cidr CIDR,
    col_4_macaddr MACADDR NOT NULL,
    col_5_cidr CIDR,
    col_6_cidr CIDR NOT NULL,
    col_7_inet INET,
    col_8_bytea BYTEA NOT NULL,
    col_9_date DATE NOT NULL DEFAULT CURRENT_DATE,
    col_10_double_precision DOUBLE PRECISION,
    col_11_uuid UUID,
    col_12_bytea BYTEA,
    col_13_double_precision DOUBLE PRECISION NOT NULL,
    col_14_inet INET,
    col_15_decimal_10_2_ DECIMAL(10,2)
);
CREATE INDEX idx_table_065_col9_1 ON table_065 (col_9_date);
CREATE INDEX idx_table_065_col9_2 ON table_065 (col_9_date);
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
CREATE TABLE IF NOT EXISTS table_067 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10),
    col_2_double_precision DOUBLE PRECISION,
    col_3_integer INTEGER,
    col_4_json JSON,
    col_5_bigint BIGINT,
    col_6_boolean BOOLEAN
);
CREATE INDEX idx_table_067_col2_1 ON table_067 (col_2_double_precision);
CREATE INDEX idx_table_067_col3_2 ON table_067 (col_3_integer);
CREATE INDEX idx_table_067_col3_3 ON table_067 (col_3_integer);
CREATE INDEX idx_table_067_col3_4 ON table_067 (col_3_integer);
CREATE TABLE IF NOT EXISTS table_068 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_time TIME,
    col_3_integer INTEGER DEFAULT 0,
    col_4_decimal_10_2_ DECIMAL(10,2),
    col_5_text TEXT NOT NULL,
    col_6_integer INTEGER NOT NULL,
    col_7_boolean BOOLEAN NOT NULL DEFAULT false,
    col_8_boolean BOOLEAN,
    col_9_jsonb JSONB DEFAULT '{}',
    col_10_boolean BOOLEAN,
    col_11_real REAL
);
CREATE INDEX idx_table_068_col5_1 ON table_068 (col_5_text);
CREATE INDEX idx_table_068_col3_2 ON table_068 (col_3_integer);
CREATE TABLE IF NOT EXISTS table_069 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN NOT NULL DEFAULT false,
    col_2_date DATE NOT NULL,
    col_3_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_4_cidr CIDR,
    col_5_timestamp TIMESTAMP
);
CREATE INDEX idx_table_069_col3_1 ON table_069 (col_3_decimal_10_2_);
CREATE INDEX idx_table_069_col3_2 ON table_069 (col_3_decimal_10_2_);
CREATE INDEX idx_table_069_col4_3 ON table_069 (col_4_cidr);
CREATE INDEX idx_table_069_col3_4 ON table_069 (col_3_decimal_10_2_);
CREATE TABLE IF NOT EXISTS table_070 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_bigint BIGINT NOT NULL,
    col_3_numeric_15_4_ NUMERIC(15,4),
    col_4_varchar_255_ VARCHAR(255) NOT NULL,
    col_5_boolean BOOLEAN NOT NULL,
    col_6_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_7_double_precision DOUBLE PRECISION,
    col_8_bigint BIGINT NOT NULL
);
CREATE INDEX idx_table_070_col7_1 ON table_070 (col_7_double_precision);
CREATE INDEX idx_table_070_col7_2 ON table_070 (col_7_double_precision);
CREATE INDEX idx_table_070_col6_3 ON table_070 (col_6_timestamp);
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
CREATE TABLE IF NOT EXISTS table_072 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_macaddr MACADDR,
    col_2_text TEXT,
    col_3_text TEXT DEFAULT '',
    col_4_bigint BIGINT,
    col_5_integer INTEGER NOT NULL,
    col_6_time TIME NOT NULL,
    col_7_date DATE,
    col_8_bigint BIGINT DEFAULT 0,
    col_9_bigint BIGINT NOT NULL,
    col_10_cidr CIDR,
    col_11_timestamp TIMESTAMP NOT NULL
);
CREATE INDEX idx_table_072_col1_1 ON table_072 (col_1_macaddr);
CREATE INDEX idx_table_072_col8_2 ON table_072 (col_8_bigint);
CREATE INDEX idx_table_072_col9_3 ON table_072 (col_9_bigint);
CREATE INDEX idx_table_072_col8_4 ON table_072 (col_8_bigint);
CREATE TABLE IF NOT EXISTS table_073 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME NOT NULL,
    col_2_bytea BYTEA,
    col_3_boolean BOOLEAN,
    col_4_inet INET,
    col_5_bytea BYTEA NOT NULL,
    col_6_uuid UUID NOT NULL
);
CREATE INDEX idx_table_073_col3_1 ON table_073 (col_3_boolean);
CREATE INDEX idx_table_073_col4_2 ON table_073 (col_4_inet);
CREATE INDEX idx_table_073_col6_3 ON table_073 (col_6_uuid);
CREATE TABLE IF NOT EXISTS table_074 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_real REAL NOT NULL,
    col_3_boolean BOOLEAN,
    col_4_double_precision DOUBLE PRECISION,
    col_5_numeric_15_4_ NUMERIC(15,4),
    col_6_real REAL,
    col_7_cidr CIDR,
    col_8_bytea BYTEA,
    col_9_uuid UUID,
    col_10_integer INTEGER NOT NULL DEFAULT 0,
    col_11_bigint BIGINT
);
CREATE INDEX idx_table_074_col11_1 ON table_074 (col_11_bigint);
CREATE INDEX idx_table_074_col2_2 ON table_074 (col_2_real);
CREATE INDEX idx_table_074_col7_3 ON table_074 (col_7_cidr);
CREATE INDEX idx_table_074_col10_4 ON table_074 (col_10_integer);
CREATE TABLE IF NOT EXISTS table_075 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION,
    col_2_json JSON,
    col_3_timestamp TIMESTAMP,
    col_4_bigint BIGINT NOT NULL DEFAULT 0,
    col_5_text TEXT
);
CREATE INDEX idx_table_075_col4_1 ON table_075 (col_4_bigint);
CREATE INDEX idx_table_075_col5_2 ON table_075 (col_5_text);
CREATE TABLE IF NOT EXISTS table_076 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_uuid UUID,
    col_3_time TIME,
    col_4_char_10_ CHAR(10),
    col_5_real REAL,
    col_6_numeric_15_4_ NUMERIC(15,4),
    col_7_jsonb JSONB DEFAULT '{}',
    col_8_integer INTEGER
);
CREATE INDEX idx_table_076_col4_1 ON table_076 (col_4_char_10_);
CREATE INDEX idx_table_076_col8_2 ON table_076 (col_8_integer);
ALTER TABLE table_076 ADD CONSTRAINT uk_table_076_col2 UNIQUE (col_2_uuid);
CREATE TABLE IF NOT EXISTS table_077 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON,
    col_2_timestamp TIMESTAMP,
    col_3_text TEXT,
    col_4_real REAL NOT NULL,
    col_5_boolean BOOLEAN DEFAULT false,
    col_6_uuid UUID NOT NULL
);
CREATE INDEX idx_table_077_col6_1 ON table_077 (col_6_uuid);
CREATE INDEX idx_table_077_col2_3 ON table_077 (col_2_timestamp);
CREATE INDEX idx_table_077_col6_4 ON table_077 (col_6_uuid);
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
CREATE TABLE IF NOT EXISTS table_079 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_varchar_255_ VARCHAR(255),
    col_2_uuid UUID,
    col_3_jsonb JSONB NOT NULL,
    col_4_bytea BYTEA NOT NULL,
    col_5_json JSON NOT NULL,
    col_6_varchar_255_ VARCHAR(255),
    col_7_real REAL,
    col_8_time TIME,
    col_9_time TIME,
    col_10_inet INET NOT NULL,
    col_11_cidr CIDR,
    col_12_macaddr MACADDR NOT NULL,
    col_13_numeric_15_4_ NUMERIC(15,4),
    col_14_varchar_255_ VARCHAR(255),
    col_15_boolean BOOLEAN NOT NULL DEFAULT false
);
CREATE INDEX idx_table_079_col4_1 ON table_079 (col_4_bytea);
CREATE INDEX idx_table_079_col11_2 ON table_079 (col_11_cidr);
CREATE TABLE IF NOT EXISTS table_080 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4),
    col_2_inet INET,
    col_3_boolean BOOLEAN DEFAULT false,
    col_4_text TEXT,
    col_5_char_10_ CHAR(10)
);
CREATE INDEX idx_table_080_col3_1 ON table_080 (col_3_boolean);
CREATE INDEX idx_table_080_col4_2 ON table_080 (col_4_text);
CREATE INDEX idx_table_080_col3_3 ON table_080 (col_3_boolean);
CREATE INDEX idx_table_080_col2_4 ON table_080 (col_2_inet);
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
CREATE TABLE IF NOT EXISTS table_082 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_uuid UUID NOT NULL,
    col_2_double_precision DOUBLE PRECISION,
    col_3_cidr CIDR,
    col_4_numeric_15_4_ NUMERIC(15,4),
    col_5_bigint BIGINT DEFAULT 0,
    col_6_jsonb JSONB,
    col_7_double_precision DOUBLE PRECISION NOT NULL,
    col_8_inet INET,
    col_9_varchar_255_ VARCHAR(255) NOT NULL,
    col_10_date DATE DEFAULT CURRENT_DATE,
    col_11_decimal_10_2_ DECIMAL(10,2),
    col_12_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_13_text TEXT,
    col_14_jsonb JSONB,
    col_15_char_10_ CHAR(10) DEFAULT ''
);
CREATE INDEX idx_table_082_col10_1 ON table_082 (col_10_date);
CREATE INDEX idx_table_082_col7_2 ON table_082 (col_7_double_precision);
CREATE INDEX idx_table_082_col6_3_gin ON table_082 USING GIN (col_6_jsonb);
CREATE INDEX idx_table_082_col8_4 ON table_082 (col_8_inet);
ALTER TABLE table_082 ADD CONSTRAINT uk_table_082_col7 UNIQUE (col_7_double_precision);
CREATE TABLE IF NOT EXISTS table_083 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_integer INTEGER,
    col_2_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    col_3_json JSON,
    col_4_varchar_255_ VARCHAR(255) NOT NULL DEFAULT '',
    col_5_double_precision DOUBLE PRECISION,
    col_6_char_10_ CHAR(10),
    col_7_cidr CIDR,
    col_8_inet INET NOT NULL
);
CREATE INDEX idx_table_083_col4_1 ON table_083 (col_4_varchar_255_);
CREATE INDEX idx_table_083_col4_2 ON table_083 (col_4_varchar_255_);
CREATE INDEX idx_table_083_col4_3 ON table_083 (col_4_varchar_255_);
CREATE INDEX idx_table_083_col8_4 ON table_083 (col_8_inet);
CREATE TABLE IF NOT EXISTS table_084 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_char_10_ CHAR(10) NOT NULL DEFAULT '',
    col_2_varchar_255_ VARCHAR(255) NOT NULL,
    col_3_text TEXT DEFAULT '',
    col_4_decimal_10_2_ DECIMAL(10,2) NOT NULL,
    col_5_time TIME NOT NULL,
    col_6_macaddr MACADDR,
    col_7_text TEXT,
    col_8_json JSON DEFAULT '{}',
    col_9_double_precision DOUBLE PRECISION,
    col_10_cidr CIDR,
    col_11_integer INTEGER,
    col_12_macaddr MACADDR,
    col_13_text TEXT DEFAULT '',
    col_14_timestamp TIMESTAMP,
    col_15_real REAL NOT NULL
);
CREATE INDEX idx_table_084_col10_1 ON table_084 (col_10_cidr);
CREATE INDEX idx_table_084_col2_2 ON table_084 (col_2_varchar_255_);
CREATE INDEX idx_table_084_col10_3 ON table_084 (col_10_cidr);
CREATE TABLE IF NOT EXISTS table_085 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON DEFAULT '{}',
    col_2_char_10_ CHAR(10),
    col_3_real REAL,
    col_4_cidr CIDR NOT NULL,
    col_5_decimal_10_2_ DECIMAL(10,2),
    col_6_real REAL NOT NULL,
    col_7_text TEXT NOT NULL,
    col_8_double_precision DOUBLE PRECISION NOT NULL,
    col_9_jsonb JSONB NOT NULL DEFAULT '{}',
    col_10_jsonb JSONB,
    col_11_timestamp TIMESTAMP
);
CREATE INDEX idx_table_085_col3_1 ON table_085 (col_3_real);
CREATE INDEX idx_table_085_col8_2 ON table_085 (col_8_double_precision);
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
CREATE TABLE IF NOT EXISTS table_087 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_bytea BYTEA,
    col_2_double_precision DOUBLE PRECISION,
    col_3_json JSON NOT NULL,
    col_4_bigint BIGINT DEFAULT 0,
    col_5_time TIME NOT NULL,
    col_6_bytea BYTEA,
    col_7_text TEXT,
    col_8_integer INTEGER NOT NULL,
    col_9_json JSON,
    col_10_inet INET,
    col_11_decimal_10_2_ DECIMAL(10,2) NOT NULL
);
CREATE INDEX idx_table_087_col2_1 ON table_087 (col_2_double_precision);
CREATE TABLE IF NOT EXISTS table_088 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN DEFAULT false,
    col_2_numeric_15_4_ NUMERIC(15,4),
    col_3_bytea BYTEA,
    col_4_inet INET,
    col_5_char_10_ CHAR(10) NOT NULL
);
CREATE INDEX idx_table_088_col5_1 ON table_088 (col_5_char_10_);
CREATE INDEX idx_table_088_col4_2 ON table_088 (col_4_inet);
CREATE INDEX idx_table_088_col5_3 ON table_088 (col_5_char_10_);
CREATE INDEX idx_table_088_col5_4 ON table_088 (col_5_char_10_);
CREATE TABLE IF NOT EXISTS table_089 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_time TIME,
    col_2_decimal_10_2_ DECIMAL(10,2),
    col_3_inet INET,
    col_4_double_precision DOUBLE PRECISION,
    col_5_json JSON NOT NULL DEFAULT '{}',
    col_6_jsonb JSONB,
    col_7_real REAL,
    col_8_double_precision DOUBLE PRECISION NOT NULL
);
CREATE INDEX idx_table_089_col7_1 ON table_089 (col_7_real);
CREATE INDEX idx_table_089_col2_2 ON table_089 (col_2_decimal_10_2_);
CREATE INDEX idx_table_089_col2_3 ON table_089 (col_2_decimal_10_2_);
CREATE INDEX idx_table_089_col4_4 ON table_089 (col_4_double_precision);
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
CREATE TABLE IF NOT EXISTS table_091 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_inet INET,
    col_2_bigint BIGINT DEFAULT 0,
    col_3_integer INTEGER,
    col_4_char_10_ CHAR(10) NOT NULL,
    col_5_varchar_255_ VARCHAR(255),
    col_6_bigint BIGINT,
    col_7_bigint BIGINT DEFAULT 0,
    col_8_jsonb JSONB,
    col_9_date DATE,
    col_10_bytea BYTEA,
    col_11_boolean BOOLEAN DEFAULT false,
    col_12_real REAL,
    col_13_time TIME NOT NULL,
    col_14_double_precision DOUBLE PRECISION
);
CREATE INDEX idx_table_091_col14_1 ON table_091 (col_14_double_precision);
CREATE INDEX idx_table_091_col7_2 ON table_091 (col_7_bigint);
CREATE INDEX idx_table_091_col10_3 ON table_091 (col_10_bytea);
CREATE INDEX idx_table_091_col10_4 ON table_091 (col_10_bytea);
CREATE TABLE IF NOT EXISTS table_092 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_double_precision DOUBLE PRECISION NOT NULL,
    col_2_cidr CIDR,
    col_3_boolean BOOLEAN,
    col_4_real REAL NOT NULL,
    col_5_boolean BOOLEAN,
    col_6_bigint BIGINT NOT NULL,
    col_7_decimal_10_2_ DECIMAL(10,2),
    col_8_real REAL,
    col_9_double_precision DOUBLE PRECISION NOT NULL,
    col_10_numeric_15_4_ NUMERIC(15,4),
    col_11_json JSON DEFAULT '{}',
    col_12_cidr CIDR,
    col_13_jsonb JSONB,
    col_14_double_precision DOUBLE PRECISION NOT NULL,
    col_15_cidr CIDR
);
CREATE INDEX idx_table_092_col8_1 ON table_092 (col_8_real);
CREATE INDEX idx_table_092_col12_2 ON table_092 (col_12_cidr);
CREATE INDEX idx_table_092_col13_3_gin ON table_092 USING GIN (col_13_jsonb);
CREATE TABLE IF NOT EXISTS table_093 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4),
    col_2_bytea BYTEA NOT NULL,
    col_3_real REAL,
    col_4_char_10_ CHAR(10) DEFAULT '',
    col_5_time TIME,
    col_6_json JSON,
    col_7_bytea BYTEA,
    col_8_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_table_093_col5_1 ON table_093 (col_5_time);
CREATE INDEX idx_table_093_col1_2 ON table_093 (col_1_numeric_15_4_);
CREATE TABLE IF NOT EXISTS table_094 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_boolean BOOLEAN DEFAULT false,
    col_2_json JSON DEFAULT '{}',
    col_3_integer INTEGER,
    col_4_jsonb JSONB NOT NULL,
    col_5_inet INET NOT NULL,
    col_6_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_094_col5_1 ON table_094 (col_5_inet);
CREATE INDEX idx_table_094_col3_2 ON table_094 (col_3_integer);
CREATE INDEX idx_table_094_col4_3_gin ON table_094 USING GIN (col_4_jsonb);
CREATE INDEX idx_table_094_col5_4 ON table_094 (col_5_inet);
CREATE TABLE IF NOT EXISTS table_095 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_date DATE,
    col_2_json JSON DEFAULT '{}',
    col_3_integer INTEGER NOT NULL,
    col_4_numeric_15_4_ NUMERIC(15,4),
    col_5_real REAL,
    col_6_jsonb JSONB,
    col_7_bigint BIGINT DEFAULT 0,
    col_8_timestamp TIMESTAMP NOT NULL,
    col_9_decimal_10_2_ DECIMAL(10,2),
    col_10_double_precision DOUBLE PRECISION,
    col_11_time TIME
);
CREATE INDEX idx_table_095_col1_2 ON table_095 (col_1_date);
CREATE INDEX idx_table_095_col11_3 ON table_095 (col_11_time);
CREATE TABLE IF NOT EXISTS table_096 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_numeric_15_4_ NUMERIC(15,4) NOT NULL,
    col_2_time TIME,
    col_3_decimal_10_2_ DECIMAL(10,2),
    col_4_macaddr MACADDR NOT NULL,
    col_5_integer INTEGER
);
CREATE INDEX idx_table_096_col5_1 ON table_096 (col_5_integer);
CREATE INDEX idx_table_096_col1_2 ON table_096 (col_1_numeric_15_4_);
CREATE INDEX idx_table_096_col1_3 ON table_096 (col_1_numeric_15_4_);
CREATE INDEX idx_table_096_col5_4 ON table_096 (col_5_integer);
CREATE TABLE IF NOT EXISTS table_097 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_real REAL,
    col_2_bytea BYTEA,
    col_3_boolean BOOLEAN DEFAULT false,
    col_4_jsonb JSONB,
    col_5_integer INTEGER DEFAULT 0
);
CREATE INDEX idx_table_097_col1_1 ON table_097 (col_1_real);
CREATE INDEX idx_table_097_col3_2 ON table_097 (col_3_boolean);
CREATE INDEX idx_table_097_col5_3 ON table_097 (col_5_integer);
CREATE INDEX idx_table_097_col3_4 ON table_097 (col_3_boolean);
CREATE TABLE IF NOT EXISTS table_098 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_json JSON,
    col_2_json JSON,
    col_3_date DATE NOT NULL,
    col_4_numeric_15_4_ NUMERIC(15,4),
    col_5_double_precision DOUBLE PRECISION,
    col_6_double_precision DOUBLE PRECISION,
    col_7_time TIME,
    col_8_inet INET,
    col_9_numeric_15_4_ NUMERIC(15,4)
);
CREATE INDEX idx_table_098_col9_1 ON table_098 (col_9_numeric_15_4_);
CREATE INDEX idx_table_098_col3_2 ON table_098 (col_3_date);
CREATE INDEX idx_table_098_col7_4 ON table_098 (col_7_time);
CREATE TABLE IF NOT EXISTS table_099 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_timestamp TIMESTAMP NOT NULL,
    col_2_json JSON NOT NULL,
    col_3_double_precision DOUBLE PRECISION,
    col_4_cidr CIDR,
    col_5_timestamp TIMESTAMP NOT NULL,
    col_6_char_10_ CHAR(10),
    col_7_char_10_ CHAR(10) DEFAULT '',
    col_8_double_precision DOUBLE PRECISION,
    col_9_json JSON
);
CREATE INDEX idx_table_099_col6_1 ON table_099 (col_6_char_10_);
CREATE INDEX idx_table_099_col3_4 ON table_099 (col_3_double_precision);
CREATE TABLE IF NOT EXISTS table_100 (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
    col_1_text TEXT,
    col_2_bigint BIGINT,
    col_3_integer INTEGER,
    col_4_json JSON DEFAULT '{}',
    col_5_inet INET NOT NULL,
    col_6_date DATE,
    col_7_numeric_15_4_ NUMERIC(15,4),
    col_8_json JSON,
    col_9_uuid UUID NOT NULL,
    col_10_bytea BYTEA
);
CREATE INDEX idx_table_100_col1_2 ON table_100 (col_1_text);

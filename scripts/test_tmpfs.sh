#!/bin/bash
# scripts/test_tmpfs.sh
# 测试 tmpfs 配置

DB_HOST=${DB_HOST:-localhost}
DB_PORT=${DB_PORT:-5434}
DB_USER=${DB_USER:-postgres}
DB_PASS=${DB_PASS:-postgres}

export PGPASSWORD=$DB_PASS

echo "💾 Testing TMPFS configuration"

# 安全删除数据库（终止连接后再 DROP）
drop_db_force() {
    local db_name="$1"
    psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -v ON_ERROR_STOP=0 -c "SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname='${db_name}' AND pid <> pg_backend_pid();" > /dev/null 2>&1
    psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE IF EXISTS ${db_name};"
}

drop_db_force test_tmpfs
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "CREATE DATABASE test_tmpfs;"

# 安装必要扩展（用于 gen_random_uuid）
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_tmpfs -c "CREATE EXTENSION IF NOT EXISTS pgcrypto;"

# 记录开始时间（秒）
START_TIME=$(date +%s)

# 执行schema（显示日志）
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_tmpfs -f sql/schema.sql

# 记录结束时间（秒）
END_TIME=$(date +%s)

# 计算耗时（秒）
DURATION=$(( END_TIME - START_TIME ))

echo "✅ TMPFS Sequential: ${DURATION}s"
echo "${DURATION}" > results/tmpfs_sequential.txt

# 校验表数量
TABLE_COUNT=$(psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_tmpfs -t -c "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'public' AND table_name LIKE 'table_%';")
echo "📦 Tables created: ${TABLE_COUNT}"

# 清理
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE test_tmpfs;"
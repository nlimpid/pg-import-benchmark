#!/bin/bash
# scripts/test_tmpfs.sh
# 测试 tmpfs 配置

DB_HOST=${DB_HOST:-localhost}
DB_PORT=${DB_PORT:-5434}
DB_USER=${DB_USER:-postgres}
DB_PASS=${DB_PASS:-postgres}

export PGPASSWORD=$DB_PASS

echo "💾 Testing TMPFS configuration"

# 创建测试数据库
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE IF EXISTS test_tmpfs;"
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "CREATE DATABASE test_tmpfs;"

# 记录开始时间
START_TIME=$(date +%s%N)

# 执行schema
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_tmpfs -f sql/schema.sql > /dev/null 2>&1

# 记录结束时间
END_TIME=$(date +%s%N)

# 计算耗时（毫秒）
DURATION=$(( ($END_TIME - $START_TIME) / 1000000 ))

echo "✅ TMPFS Sequential: ${DURATION}ms"
echo "${DURATION}" > results/tmpfs_sequential.txt

# 清理
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE test_tmpfs;"
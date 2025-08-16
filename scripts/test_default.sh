#!/bin/bash
# scripts/test_default.sh
# 测试默认配置下的顺序创建

DB_HOST=${DB_HOST:-localhost}
DB_PORT=${DB_PORT:-5432}
DB_USER=${DB_USER:-postgres}
DB_PASS=${DB_PASS:-postgres}

export PGPASSWORD=$DB_PASS

echo "🔧 Testing DEFAULT configuration - Sequential creation"

# 创建测试数据库
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE IF EXISTS test_default;"
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "CREATE DATABASE test_default;"

# 记录开始时间
START_TIME=$(date +%s%N)

# 执行schema
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_default -f sql/schema.sql > /dev/null 2>&1

# 记录结束时间
END_TIME=$(date +%s%N)

# 计算耗时（毫秒）
DURATION=$(( ($END_TIME - $START_TIME) / 1000000 ))

echo "✅ DEFAULT Sequential: ${DURATION}ms"
echo "${DURATION}" > results/default_sequential.txt

# 清理
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE test_default;"
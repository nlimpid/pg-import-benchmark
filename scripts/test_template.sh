#!/bin/bash
# scripts/test_template.sh
# 测试模板数据库

DB_HOST=${DB_HOST:-localhost}
DB_PORT=${DB_PORT:-5433}
DB_USER=${DB_USER:-postgres}
DB_PASS=${DB_PASS:-postgres}

export PGPASSWORD=$DB_PASS

echo "📋 Testing TEMPLATE database"

# 创建模板数据库（只需要一次）
echo "  Creating template..."
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE IF EXISTS test_template;"
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "CREATE DATABASE test_template;"

# 在模板中创建所有表
TEMPLATE_START=$(date +%s)
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_template -f sql/schema.sql > /dev/null 2>&1
TEMPLATE_END=$(date +%s)
TEMPLATE_DURATION=$(( TEMPLATE_END - TEMPLATE_START ))
echo "  Template preparation: ${TEMPLATE_DURATION}s"

# 标记为模板
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "ALTER DATABASE test_template WITH is_template = true ALLOW_CONNECTIONS = false;"

# 测试基于模板创建新数据库
echo "  Creating database from template..."
START_TIME=$(date +%s)

psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "CREATE DATABASE test_from_template WITH TEMPLATE test_template;"

END_TIME=$(date +%s)
DURATION=$(( END_TIME - START_TIME ))

echo "✅ TEMPLATE Database Creation: ${DURATION}s"
echo "${DURATION}" > results/template.txt

# 验证表是否存在
TABLE_COUNT=$(psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_from_template -t -c "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'public';")
echo "  Tables in new database: $TABLE_COUNT"

# 清理
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE test_from_template;"
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "ALTER DATABASE test_template WITH is_template = false ALLOW_CONNECTIONS = true;"
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE test_template;"
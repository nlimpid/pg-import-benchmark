#!/bin/bash
# scripts/test_parallel.sh
# 测试并行创建表

DB_HOST=${DB_HOST:-localhost}
DB_PORT=${DB_PORT:-5433}
DB_USER=${DB_USER:-postgres}
DB_PASS=${DB_PASS:-postgres}

export PGPASSWORD=$DB_PASS
RESULT_FILE=${RESULT_FILE:-results/parallel.txt}

echo "⚡ Testing PARALLEL creation"

# 创建测试数据库
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE IF EXISTS test_parallel;"
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "CREATE DATABASE test_parallel;"

# 记录开始时间
START_TIME=$(date +%s%N)

# 并行执行（使用 GNU parallel 或 xargs）
if command -v parallel &> /dev/null; then
    # 使用 GNU parallel
    ls sql/tables/*.sql | parallel -j 10 "psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_parallel -f {} > /dev/null 2>&1"
else
    # 使用 xargs 作为备选
    ls sql/tables/*.sql | xargs -P 10 -I {} sh -c "psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_parallel -f {} > /dev/null 2>&1"
fi

# 记录结束时间
END_TIME=$(date +%s%N)

# 计算耗时（毫秒）
DURATION=$(( ($END_TIME - $START_TIME) / 1000000 ))

echo "✅ PARALLEL Creation: ${DURATION}ms"
echo "${DURATION}" > "${RESULT_FILE}"

# 清理
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE test_parallel;"
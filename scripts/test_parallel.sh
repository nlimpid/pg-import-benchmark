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

# 安全删除数据库（终止连接后再 DROP）
drop_db_force() {
    local db_name="$1"
    psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -v ON_ERROR_STOP=0 -c "SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname='${db_name}' AND pid <> pg_backend_pid();" > /dev/null 2>&1
    psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE IF EXISTS ${db_name};"
}

drop_db_force test_parallel
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "CREATE DATABASE test_parallel;"

# 安装必要扩展（用于 gen_random_uuid）
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_parallel -c "CREATE EXTENSION IF NOT EXISTS pgcrypto;"

# 记录开始时间（秒）
START_TIME=$(date +%s)

# 并行执行（使用 GNU parallel 或 xargs）
if command -v parallel &> /dev/null; then
    # 使用 GNU parallel
    ls sql/tables/*.sql | parallel -j 10 "psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_parallel -f {}"
else
    # 使用 xargs 作为备选
    ls sql/tables/*.sql | xargs -P 10 -I {} sh -c "psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_parallel -f {}"
fi

# 记录结束时间（秒）
END_TIME=$(date +%s)

# 计算耗时（秒）
DURATION=$(( END_TIME - START_TIME ))

echo "✅ PARALLEL Creation: ${DURATION}s"
echo "${DURATION}" > "${RESULT_FILE}"

# 校验表数量
TABLE_COUNT=$(psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d test_parallel -t -c "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'public' AND table_name LIKE 'table_%';")
echo "📦 Tables created: ${TABLE_COUNT}"

# 清理
# psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d postgres -c "DROP DATABASE test_parallel;"
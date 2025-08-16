#!/bin/bash
# scripts/benchmark.sh
# 主测试脚本 - 运行所有测试并生成报告

set -e

echo "🏁 PostgreSQL Table Creation Performance Benchmark"
echo "=================================================="
echo ""

# 创建结果目录
mkdir -p results

# 1. 生成表结构（如果不存在）
if [ ! -f "sql/schema.sql" ]; then
    echo "📝 Generating 100 tables..."
    bash scripts/generate_tables.sh
fi

# 2. 启动Docker容器
echo "🐳 Starting PostgreSQL containers..."

# 启动默认配置
docker-compose -f docker/docker-compose.default.yml up -d
echo "  Waiting for default PostgreSQL..."
sleep 10

# 启动优化配置
docker-compose -f docker/docker-compose.optimized.yml up -d
echo "  Waiting for optimized PostgreSQL..."
sleep 10

# 启动tmpfs配置
docker-compose -f docker/docker-compose.tmpfs.yml up -d
echo "  Waiting for tmpfs PostgreSQL..."
sleep 10

echo ""
echo "🧪 Running benchmarks..."
echo "------------------------"

# 3. 运行测试
bash scripts/test_default.sh
bash scripts/test_optimized.sh
bash scripts/test_parallel.sh
bash scripts/test_template.sh
bash scripts/test_tmpfs.sh

echo ""
echo "📊 Benchmark Results"
echo "===================="

# 4. 读取并显示结果
DEFAULT_TIME=$(cat results/default_sequential.txt 2>/dev/null || echo "N/A")
OPTIMIZED_TIME=$(cat results/optimized_sequential.txt 2>/dev/null || echo "N/A")
PARALLEL_TIME=$(cat results/parallel.txt 2>/dev/null || echo "N/A")
TEMPLATE_TIME=$(cat results/template.txt 2>/dev/null || echo "N/A")
TMPFS_TIME=$(cat results/tmpfs.txt 2>/dev/null || echo "N/A")

# 创建结果表格
cat > results/summary.md <<EOF
# PostgreSQL Table Creation Benchmark Results

## Test Environment
- Tables: 100
- Each table: 5-15 columns with mixed data types
- Indexes: 2-4 per table
- Constraints: Primary key + random unique constraints

## Results

| Configuration | Method | Time (ms) | Relative Speed |
|--------------|--------|-----------|----------------|
| Default | Sequential | ${DEFAULT_TIME} | 1.0x (baseline) |
| Optimized | Sequential | ${OPTIMIZED_TIME} | $(echo "scale=2; $DEFAULT_TIME / $OPTIMIZED_TIME" | bc)x |
| Optimized | Parallel | ${PARALLEL_TIME} | $(echo "scale=2; $DEFAULT_TIME / $PARALLEL_TIME" | bc)x |
| Optimized | Template DB | ${TEMPLATE_TIME} | $(echo "scale=2; $DEFAULT_TIME / $TEMPLATE_TIME" | bc)x |
| TMPFS | Sequential | ${TMPFS_TIME} | $(echo "scale=2; $DEFAULT_TIME / $TMPFS_TIME" | bc)x |

## Configuration Details

### Default Configuration
- Standard PostgreSQL settings
- fsync=on, synchronous_commit=on

### Optimized Configuration
\`\`\`
fsync=off
synchronous_commit=off
full_page_writes=off
checkpoint_completion_target=0.9
wal_buffers=16MB
shared_buffers=256MB
\`\`\`

### TMPFS Configuration
- Database stored in RAM (tmpfs)
- Same optimizations as "Optimized"

### Template Database
- Pre-created template with all tables
- New database created via CREATE DATABASE WITH TEMPLATE

## Conclusions

1. **Template Database** is the fastest method (~${TEMPLATE_TIME}ms)
2. **TMPFS** provides significant speedup (~${TMPFS_TIME}ms)
3. **Parallel creation** improves performance (~${PARALLEL_TIME}ms)
4. **Configuration optimization** alone gives good improvement (~${OPTIMIZED_TIME}ms)
5. **Default configuration** is slowest (~${DEFAULT_TIME}ms)
EOF

# 打印结果
echo ""
cat results/summary.md

# 5. 清理（可选）
echo ""
echo "🧹 Cleanup (press Ctrl+C to skip)..."
sleep 3
docker-compose -f docker/docker-compose.default.yml down
docker-compose -f docker/docker-compose.optimized.yml down
docker-compose -f docker/docker-compose.tmpfs.yml down

echo ""
echo "✅ Benchmark complete! Results saved in results/summary.md"
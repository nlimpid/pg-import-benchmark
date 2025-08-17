#!/bin/bash

# 生成100张不同结构的表
OUTPUT_DIR="sql/tables"
COMBINED_FILE="sql/schema.sql"

mkdir -p $OUTPUT_DIR
> $COMBINED_FILE

# 数据类型数组
TYPES=(
    "INTEGER"
    "BIGINT"
    "DECIMAL(10,2)"
    "NUMERIC(15,4)"
    "REAL"
    "DOUBLE PRECISION"
    "VARCHAR(255)"
    "TEXT"
    "CHAR(10)"
    "BOOLEAN"
    "DATE"
    "TIMESTAMP"
    "TIME"
    "UUID"
    "JSON"
    "JSONB"
    "BYTEA"
    "INET"
    "CIDR"
    "MACADDR"
)

# 生成表的函数
generate_table() {
    local table_num=$1
    local table_name="table_$(printf "%03d" $table_num)"
    
    # 随机选择列数 (5-15列)
    local num_columns=$((5 + RANDOM % 11))
    
    cat <<EOF
CREATE TABLE IF NOT EXISTS $table_name (
    id BIGSERIAL PRIMARY KEY,
    uuid_col UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
EOF
    
    # 生成随机列，并记录列名/类型以便后续索引/约束复用
    local column_names=()
    local column_types=()
    for ((i=1; i<=$num_columns; i++)); do
        # 随机选择数据类型
        local type_index=$((RANDOM % ${#TYPES[@]}))
        local data_type="${TYPES[$type_index]}"
        local column_name="col_${i}_$(echo $data_type | tr ' (),' '_' | tr '[:upper:]' '[:lower:]')"
        
        # 随机决定是否允许NULL (70%允许)
        local null_constraint=""
        if [ $((RANDOM % 10)) -lt 3 ]; then
            null_constraint=" NOT NULL"
        fi
        
        # 随机添加默认值 (30%概率)
        local default_value=""
        if [ $((RANDOM % 10)) -lt 3 ]; then
            case "$data_type" in
                "INTEGER"|"BIGINT")
                    default_value=" DEFAULT 0"
                    ;;
                "BOOLEAN")
                    default_value=" DEFAULT false"
                    ;;
                "VARCHAR"*|"TEXT"|"CHAR"*)
                    default_value=" DEFAULT ''"
                    ;;
                "TIMESTAMP")
                    default_value=" DEFAULT CURRENT_TIMESTAMP"
                    ;;
                "DATE")
                    default_value=" DEFAULT CURRENT_DATE"
                    ;;
                "JSON"|"JSONB")
                    default_value=" DEFAULT '{}'"
                    ;;
            esac
        fi
        
        # 输出列定义（使用 printf，避免 echo -n 的跨平台兼容问题）
        printf "    %s %s%s%s" "$column_name" "$data_type" "$null_constraint" "$default_value"
        
        if [ $i -lt $num_columns ]; then
            printf ",\n"
        else
            printf "\n"
        fi

        # 记录列名与类型
        column_names+=("$column_name")
        column_types+=("$data_type")
    done
    
    echo ");"
    
    # 添加索引 (每张表2-4个索引)，复用已生成的列名
    local num_indexes=$((2 + RANDOM % 3))
    for ((j=1; j<=$num_indexes; j++)); do
        local idx_index=$((RANDOM % num_columns))
        local idx_col_name="${column_names[$idx_index]}"
        local idx_col_type="${column_types[$idx_index]}"
        # 针对 JSON/JSONB 做特殊处理：JSONB 用 GIN，JSON 跳过
        case "$idx_col_type" in
            "JSONB")
                printf "CREATE INDEX idx_%s_col%d_%d_gin ON %s USING GIN (%s);\n" "$table_name" $((idx_index+1)) "$j" "$table_name" "$idx_col_name"
                ;;
            "JSON")
                # JSON 无默认 btree/GIN，这里跳过索引
                ;;
            *)
                printf "CREATE INDEX idx_%s_col%d_%d ON %s (%s);\n" "$table_name" $((idx_index+1)) "$j" "$table_name" "$idx_col_name"
                ;;
        esac
    done
    
    # 30%概率添加唯一约束
    if [ $((RANDOM % 10)) -lt 3 ]; then
        # 选择一个支持 btree 唯一约束的列（跳过 JSON/JSONB）
        local attempts=0
        local chosen=-1
        while [ $attempts -lt $num_columns ]; do
            local cand=$((RANDOM % num_columns))
            local cand_type="${column_types[$cand]}"
            if [ "$cand_type" != "JSON" ] && [ "$cand_type" != "JSONB" ]; then
                chosen=$cand
                break
            fi
            attempts=$((attempts+1))
        done
        if [ $chosen -ge 0 ]; then
            local unique_col_name="${column_names[$chosen]}"
            printf "ALTER TABLE %s ADD CONSTRAINT uk_%s_col%d UNIQUE (%s);\n" "$table_name" "$table_name" $((chosen+1)) "$unique_col_name"
        fi
    fi
    
    echo ""
}

# 生成100张表
echo "Generating 100 tables..."
for i in {1..100}; do
    table_sql=$(generate_table $i)
    
    # 保存到单独文件
    echo "$table_sql" > "$OUTPUT_DIR/table_$(printf "%03d" $i).sql"
    
    # 添加到组合文件
    echo "$table_sql" >> $COMBINED_FILE
    
    # 显示进度
    if [ $((i % 10)) -eq 0 ]; then
        echo "Generated $i tables..."
    fi
done

echo "✅ Generated 100 tables"
echo "📁 Individual files in: $OUTPUT_DIR/"
echo "📄 Combined schema in: $COMBINED_FILE"
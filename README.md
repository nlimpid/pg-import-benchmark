# PostgreSQL Table Creation Benchmark

A comprehensive benchmark suite to test different PostgreSQL table creation strategies and configurations.

## Overview

This project compares the performance of creating 100 tables across different PostgreSQL configurations and methodologies:

- **Default Configuration**: Standard PostgreSQL settings
- **Optimized Configuration**: Performance-tuned settings
- **Parallel Creation**: Concurrent table creation
- **Template Database**: Pre-built template approach
- **TMPFS Configuration**: In-memory database storage

## Quick Start

### Prerequisites

- Docker and Docker Compose
- PostgreSQL client (`psql`)
- Bash shell
- `bc` calculator (for result calculations)
- GNU Parallel (optional, for parallel tests)

### Run All Benchmarks

```bash
# Generate table schemas and run all tests
./scripts/benchmark.sh
```

### Run Individual Tests

```bash
# Generate 100 table schemas first
./scripts/generate_tables.sh

# Start specific Docker configuration
docker-compose -f docker/docker-compose.default.yml up -d

# Run specific test
./scripts/test_default.sh

# Clean up
docker-compose -f docker/docker-compose.default.yml down
```

## Project Structure

```
pg-table-creation-benchmark/
├── .github/workflows/
│   └── benchmark.yml          # GitHub Actions CI
├── sql/
│   ├── schema.sql             # Combined 100 tables schema
│   └── tables/                # Individual table files (for parallel tests)
│       ├── table_001.sql
│       ├── table_002.sql
│       └── ...
├── scripts/
│   ├── generate_tables.sh     # Generate 100 tables script
│   ├── test_default.sh        # Default configuration test
│   ├── test_optimized.sh      # Optimized configuration test
│   ├── test_parallel.sh       # Parallel creation test
│   ├── test_template.sh       # Template database test
│   ├── test_tmpfs.sh          # TMPFS configuration test
│   └── benchmark.sh           # Main benchmark runner
├── docker/
│   ├── docker-compose.default.yml    # Default PostgreSQL
│   ├── docker-compose.optimized.yml  # Optimized PostgreSQL
│   └── docker-compose.tmpfs.yml      # TMPFS PostgreSQL
└── results/
    └── summary.md             # Benchmark results (generated)
```

## Test Configurations

### Default Configuration
- Standard PostgreSQL 15 settings
- `fsync=on`, `synchronous_commit=on`
- Regular disk storage

### Optimized Configuration
```sql
fsync=off
synchronous_commit=off
full_page_writes=off
checkpoint_completion_target=0.9
wal_buffers=16MB
shared_buffers=256MB
max_wal_size=1GB
```

### TMPFS Configuration
- Database stored in RAM using tmpfs
- Same optimizations as "Optimized"
- 2GB memory allocation

### Template Database Method
1. Create a template database with all tables
2. Mark as template (`is_template=true`)
3. Create new databases using `CREATE DATABASE WITH TEMPLATE`

### Parallel Creation
- Uses GNU Parallel or xargs
- 10 concurrent connections
- Individual table files processed simultaneously

## Table Schema Details

Each generated table includes:
- **Columns**: 5-15 randomly selected columns
- **Data Types**: 20 different PostgreSQL types (INTEGER, VARCHAR, JSON, UUID, etc.)
- **Constraints**: Primary key, unique constraints (30% probability)
- **Indexes**: 2-4 indexes per table
- **Defaults**: Random default values (30% probability)

## Results Interpretation

Benchmark results show relative performance:
- Lower time = better performance
- Relative speed calculated against baseline (default configuration)
- Template database is typically fastest for creating new environments
- TMPFS provides significant I/O improvements
- Parallel creation helps with CPU-bound operations

## Environment Variables

```bash
DB_HOST=localhost      # Database host
DB_PORT=5432          # Database port
DB_USER=postgres      # Database user
DB_PASS=postgres      # Database password
```

## GitHub Actions

The project includes automated benchmarking via GitHub Actions:
- Runs on push/PR to main branch
- Tests all configurations
- Uploads results as artifacts
- Comments on PRs with benchmark results

## Local Development

```bash
# Generate tables only
./scripts/generate_tables.sh

# Test single configuration
docker-compose -f docker/docker-compose.optimized.yml up -d
./scripts/test_optimized.sh
docker-compose -f docker/docker-compose.optimized.yml down

# Check results
cat results/optimized_sequential.txt
```

## Performance Tips

1. **For development environments**: Use template databases
2. **For CI/CD**: Consider TMPFS or optimized settings
3. **For production setup**: Use parallel creation with optimized settings
4. **For testing**: Template databases provide fastest iteration

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run benchmarks to verify
5. Submit a pull request

## License

MIT License - see LICENSE file for details.
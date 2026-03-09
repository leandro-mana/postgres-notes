# PostgreSQL Notes

![Python](https://img.shields.io/badge/Python-3.12+-blue?logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-17-336791?logo=postgresql&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebooks-F37626?logo=jupyter&logoColor=white)
![Notebooks](https://img.shields.io/badge/Notebooks-45-green)
![Chapters](https://img.shields.io/badge/Chapters-15-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

Interactive PostgreSQL notes and SQL notebooks for Data Engineers — from fundamentals to real-world ETL patterns. All content is delivered through executable Jupyter notebooks using [JupySQL](https://jupysql.ploomber.io/) `%%sql` magic against a local PostgreSQL 17 Docker container.

## Requirements

- [Python 3.12+](https://www.python.org/downloads/)
- [Poetry](https://python-poetry.org/docs/#installation)
- [Docker](https://docs.docker.com/get-docker/)

## Quick Start

```bash
# 1. Install dependencies
make install

# 2. Start PostgreSQL container
make up

# 3. Open notebooks for a chapter
make jupyter CH=01
```

## Project Structure

```text
postgres-notes/
├── src/
│   ├── common/              # Connection utilities
│   ├── chapter_01/          # Database Fundamentals & DDL
│   ├── chapter_02/          # DML — INSERT, UPDATE, DELETE
│   ├── ...
│   └── chapter_15/          # Real-World Data Engineering Recipes
├── tests/                   # Pytest test suite
├── scripts/
│   └── init.sql             # Database seed data
├── docker-compose.yml       # PostgreSQL 17 container
├── Makefile                 # Automation commands
└── pyproject.toml           # Poetry configuration
```

## Chapters

| Chapter | Notebooks | Topics |
| --- | --- | --- |
| **01 - Database Fundamentals & DDL** | 3 | Data types, CREATE/ALTER/DROP, schemas, constraints, SERIAL vs IDENTITY |
| **02 - DML — INSERT, UPDATE, DELETE** | 3 | CRUD operations, RETURNING clause, UPSERT (ON CONFLICT), idempotent loads |
| **03 - SELECT, Filtering & Sorting** | 3 | WHERE, LIKE/ILIKE, SIMILAR TO, POSIX regex, ORDER BY, pagination |
| **04 - Aggregations & GROUP BY** | 3 | COUNT/SUM/AVG, GROUP BY, HAVING, ROLLUP, CUBE, GROUPING SETS |
| **05 - JOINs — Deep Dive** | 3 | INNER/LEFT/RIGHT/FULL/CROSS/SELF JOIN, LATERAL joins, anti-joins |
| **06 - Subqueries & CTEs** | 3 | Scalar/correlated subqueries, CTEs, recursive CTEs, MATERIALIZED |
| **07 - Window Functions** | 3 | ROW_NUMBER, RANK, LAG/LEAD, running totals, window frames |
| **08 - Views, Indexes & Performance** | 3 | Views, materialized views, B-Tree/GIN/GiST/BRIN indexes, EXPLAIN |
| **09 - Stored Procedures & Functions** | 3 | PL/pgSQL, functions, procedures, triggers, LISTEN/NOTIFY |
| **10 - Transactions & Concurrency** | 3 | ACID, MVCC, isolation levels, locking, advisory locks, deadlocks |
| **11 - Data Modeling & Normalization** | 3 | 1NF-BCNF, star/snowflake schemas, SCD patterns |
| **12 - JSON, Text & Advanced Types** | 3 | JSONB, full-text search, arrays, ranges, hstore, domain types |
| **13 - Query Optimization & EXPLAIN** | 3 | EXPLAIN ANALYZE deep dive, index strategies, query rewriting |
| **14 - ETL Patterns for Data Engineers** | 3 | COPY, staging tables, bulk loads, UPSERT, CDC, incremental extraction |
| **15 - Real-World DE Recipes** | 3 | Deduplication, DISTINCT ON, pivot/unpivot, gaps & islands, ltree |

## Running Notebooks

```bash
# Open a specific chapter in Jupyter Lab
make jupyter CH=07

# List all chapters
make list-chapters

# List notebooks in a chapter
make list-notebooks CH=05
```

## Docker (PostgreSQL)

```bash
# Start PostgreSQL container (localhost:5432)
make up

# Stop and remove volumes
make down

# Rebuild from scratch
make reset
```

Connection details:

- **Host**: `localhost:5432`
- **User**: `postgres`
- **Password**: `root_password`
- **Database**: `postgres_notes`

## Code Quality

```bash
make lint           # Ruff linter
make format         # Auto-format
make type-check     # mypy
make check          # All checks
```

## Development

See [CONTRIBUTING.md](CONTRIBUTING.md) for workflow, commit conventions, and code style guidelines.

## References

- [PostgreSQL 17 Documentation](https://www.postgresql.org/docs/17/)
- [JupySQL Documentation](https://jupysql.ploomber.io/)
- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/default.asp)
- [The Art of PostgreSQL](https://theartofpostgresql.com/)

## License

MIT

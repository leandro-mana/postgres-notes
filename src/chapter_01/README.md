# Chapter 01: Database Fundamentals & DDL

This chapter covers the foundational building blocks of PostgreSQL: data types, schemas, table creation with constraints, and schema modification operations.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_data_types_and_schemas.ipynb` | PostgreSQL data types (INT, BIGINT, NUMERIC, VARCHAR, TEXT, BOOLEAN, DATE, TIMESTAMPTZ, UUID, JSONB, arrays), CREATE/DROP SCHEMA, search_path |
| 2 | `02_create_tables_and_constraints.ipynb` | CREATE TABLE, PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, DEFAULT, CHECK, SERIAL vs IDENTITY, GENERATED columns |
| 3 | `03_alter_and_manage_schema.ipynb` | ALTER TABLE (ADD, ALTER, DROP COLUMN, RENAME), DROP TABLE, TRUNCATE, `\d` commands, information_schema, pg_catalog |

## Key Takeaways

- PostgreSQL has a rich type system — prefer `TEXT` over `VARCHAR`, `TIMESTAMPTZ` over `TIMESTAMP`, and `JSONB` over `JSON`.
- Use `GENERATED ALWAYS AS IDENTITY` instead of `SERIAL` in modern PostgreSQL.
- Schemas help organize database objects and control access — understand `search_path`.
- `information_schema` and `pg_catalog` are your best friends for inspecting database structure programmatically.

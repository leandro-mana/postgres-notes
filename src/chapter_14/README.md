# Chapter 14: ETL Patterns for Data Engineers

This chapter covers practical ETL patterns in PostgreSQL: efficient data loading with COPY, upsert and merge strategies for idempotent pipelines, and change data capture for incremental extraction.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_copy_and_bulk_loading.ipynb` | COPY vs INSERT, COPY FROM/TO, staging tables, unlogged tables, bulk INSERT with generate_series |
| 2 | `02_upsert_and_merge_patterns.ipynb` | ON CONFLICT DO NOTHING/UPDATE, EXCLUDED, conditional upsert, CTE merge pattern, MERGE (PG 15+), idempotent loads |
| 3 | `03_cdc_and_incremental_extraction.ipynb` | Timestamp-based CDC, audit columns, triggers, logical replication, pg_logical_slot, high-water mark pattern |

## Key Takeaways

- COPY is orders of magnitude faster than row-by-row INSERT for bulk loading.
- Always load data to a staging table first, then transform and merge into target tables.
- INSERT ... ON CONFLICT is the foundation of idempotent, retry-safe data pipelines in PostgreSQL.
- Timestamp-based CDC is simple and effective; logical replication captures all change types including deletes.

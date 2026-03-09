# Chapter 02: DML — INSERT, UPDATE, DELETE

This chapter covers data manipulation operations in PostgreSQL, including powerful PostgreSQL-specific features like RETURNING, UPSERT with ON CONFLICT, and idempotent load patterns essential for Data Engineers.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_insert_fundamentals.ipynb` | Single row INSERT, multi-row INSERT, INSERT INTO ... SELECT, DEFAULT values, RETURNING clause, COPY for bulk loading |
| 2 | `02_update_and_delete.ipynb` | UPDATE with SET/WHERE, UPDATE with FROM (join-based), DELETE with WHERE/USING, RETURNING clause, TRUNCATE vs DELETE |
| 3 | `03_upsert_and_idempotent_patterns.ipynb` | INSERT ... ON CONFLICT DO NOTHING, ON CONFLICT DO UPDATE (UPSERT), EXCLUDED pseudo-table, idempotent load patterns, merge-like CTEs |

## Key Takeaways

- The `RETURNING` clause eliminates the need for a separate SELECT after INSERT/UPDATE/DELETE.
- `ON CONFLICT` (UPSERT) is critical for building idempotent data pipelines.
- `UPDATE ... FROM` and `DELETE ... USING` allow join-based modifications — a PostgreSQL specialty.
- Always prefer `TRUNCATE` over `DELETE` (without WHERE) for clearing entire tables.

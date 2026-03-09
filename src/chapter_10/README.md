# Chapter 10: Transactions & Concurrency

This chapter covers ACID properties, PostgreSQL isolation levels, MVCC internals, locking mechanisms, and deadlock handling.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_acid_and_transaction_basics.ipynb` | ACID properties, BEGIN/COMMIT/ROLLBACK, SAVEPOINTs, autocommit behavior |
| 2 | `02_isolation_levels_and_mvcc.ipynb` | READ COMMITTED, REPEATABLE READ, SERIALIZABLE, MVCC explained, phantom reads |
| 3 | `03_locking_and_deadlocks.ipynb` | Row locks, FOR UPDATE/SHARE, table locks, advisory locks, deadlock detection, pg_locks |

## Key Takeaways

- PostgreSQL uses MVCC — readers never block writers and vice versa.
- The default isolation level is READ COMMITTED; understand when to use stricter levels.
- Advisory locks are a PostgreSQL-specific feature perfect for coordinating ETL jobs.
- Always wrap batch operations in explicit transactions and use SAVEPOINTs for partial rollback.

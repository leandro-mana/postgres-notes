# Chapter 13: Query Optimization & EXPLAIN

This chapter covers the tools and techniques for understanding and improving PostgreSQL query performance: reading EXPLAIN plans, designing effective indexes, and rewriting queries for better execution.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_explain_analyze_deep_dive.ipynb` | EXPLAIN output formats, ANALYZE/BUFFERS/TIMING, reading plan trees, node types, cost model |
| 2 | `02_index_optimization.ipynb` | Covering indexes (INCLUDE), partial indexes, expression indexes, multi-column ordering, FK indexes, pg_stat_user_indexes |
| 3 | `03_query_rewriting.ipynb` | Correlated subquery elimination, EXISTS vs IN, CTE materialization, predicate pushdown, UNION ALL, ANALYZE/VACUUM |

## Key Takeaways

- Always use EXPLAIN (ANALYZE, BUFFERS, TIMING) to diagnose slow queries — estimated costs alone can be misleading.
- PostgreSQL does NOT auto-create indexes on foreign keys — this is a common performance trap.
- CTEs in PostgreSQL 12+ are optimized (inlined) by default, but you can force materialization with `MATERIALIZED`.
- Keep statistics up to date with ANALYZE — the query planner is only as good as its statistics.

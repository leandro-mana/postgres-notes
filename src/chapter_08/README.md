# Chapter 08: Views, Indexes & Performance Basics

This chapter covers views (standard and materialized), PostgreSQL index types, and the fundamentals of reading query execution plans with EXPLAIN.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_views_and_materialized_views.ipynb` | CREATE VIEW, updatable views, WITH CHECK OPTION, materialized views, REFRESH CONCURRENTLY |
| 2 | `02_index_types_and_strategies.ipynb` | B-Tree, Hash, GIN, GiST, BRIN indexes, partial indexes, expression indexes, composite indexes |
| 3 | `03_explain_basics.ipynb` | EXPLAIN vs EXPLAIN ANALYZE, reading plans, cost estimates, scan types, join methods |

## Key Takeaways

- Materialized views are powerful for pre-computing expensive aggregations in data pipelines.
- Choose the right index type: B-Tree for most cases, GIN for JSONB/arrays, BRIN for large time-series tables.
- Always use `EXPLAIN ANALYZE` (not just `EXPLAIN`) to see actual execution statistics.
- Partial indexes can dramatically reduce index size when you only query a subset of rows.

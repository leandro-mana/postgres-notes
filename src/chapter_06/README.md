# Chapter 06: Subqueries & CTEs

This chapter covers subqueries (scalar, correlated, derived tables) and Common Table Expressions (CTEs), including recursive CTEs for hierarchical data traversal.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_subqueries.ipynb` | Scalar subqueries, subqueries in WHERE (IN, EXISTS), correlated subqueries, derived tables, ANY/ALL operators |
| 2 | `02_common_table_expressions.ipynb` | WITH clause basics, multiple CTEs, CTE vs subquery readability, materialized vs non-materialized CTEs (PG 12+) |
| 3 | `03_recursive_ctes.ipynb` | WITH RECURSIVE syntax, employee hierarchy traversal, generating series, cycle detection |

## Key Takeaways

- Use `EXISTS` over `IN` for better performance with large subquery results.
- CTEs improve readability and are essential for staging multi-step transformations in ETL pipelines.
- Recursive CTEs are the go-to tool for hierarchical data (org charts, BOMs, category trees).
- PostgreSQL 12+ lets you control CTE materialization with `MATERIALIZED` / `NOT MATERIALIZED`.

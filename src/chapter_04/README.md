# Chapter 04: Aggregations & GROUP BY

This chapter covers aggregate functions, grouping operations, and advanced grouping features like ROLLUP, CUBE, and GROUPING SETS that are essential for building summary reports and analytics queries.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_aggregate_functions.ipynb` | COUNT(*), COUNT(column), COUNT(DISTINCT), SUM, AVG, MIN, MAX, ROUND with AVG, NULL handling, STRING_AGG, ARRAY_AGG |
| 2 | `02_group_by_and_having.ipynb` | GROUP BY single/multiple columns, HAVING vs WHERE, common patterns, top-N per group, real examples with orders/books/employees |
| 3 | `03_rollup_cube_grouping_sets.ipynb` | ROLLUP for hierarchical subtotals, CUBE for all combinations, GROUPING SETS for custom grouping, GROUPING() function |

## Key Takeaways

- `COUNT(*)` counts rows; `COUNT(column)` skips NULLs — know the difference.
- `STRING_AGG` and `ARRAY_AGG` are PostgreSQL gems for collapsing grouped rows.
- `HAVING` filters after aggregation, `WHERE` filters before — a common interview question.
- `ROLLUP`, `CUBE`, and `GROUPING SETS` eliminate the need for UNION ALL when building summary reports.

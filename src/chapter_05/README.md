# Chapter 05: JOINs — Deep Dive

This chapter provides a comprehensive exploration of all JOIN types in PostgreSQL, from basic INNER and OUTER joins to advanced LATERAL joins and anti-join patterns critical for Data Engineering workflows.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_inner_and_outer_joins.ipynb` | INNER JOIN, LEFT JOIN / LEFT OUTER JOIN, RIGHT JOIN, FULL OUTER JOIN, multi-table joins, real examples with books + authors + categories |
| 2 | `02_cross_and_self_joins.ipynb` | CROSS JOIN for cartesian products, SELF JOIN for hierarchical data (employees + manager_id), SELF JOIN for row comparison, NATURAL JOIN (and why to avoid it) |
| 3 | `03_lateral_joins_and_anti_patterns.ipynb` | LEFT JOIN ... WHERE IS NULL (anti-join), NOT EXISTS, LATERAL JOIN, top-N per group using LATERAL, LATERAL for flattening JSON arrays |

## Key Takeaways

- LEFT JOIN is the workhorse of Data Engineering — understand it deeply.
- Anti-joins (LEFT JOIN + IS NULL or NOT EXISTS) find "missing" data — essential for data quality checks.
- LATERAL JOIN is PostgreSQL's answer to correlated subqueries with set-returning functions.
- Avoid NATURAL JOIN in production — implicit column matching is fragile and error-prone.

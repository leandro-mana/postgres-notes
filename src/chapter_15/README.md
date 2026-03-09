# Chapter 15: Real-World Data Engineering Recipes

This chapter provides practical, production-ready SQL recipes for common data engineering challenges: deduplication, pivot/unpivot transformations, gap-and-island analysis, and hierarchical data querying.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_deduplication.ipynb` | GROUP BY HAVING, ROW_NUMBER dedup, ctid-based DELETE, DISTINCT ON, CTE dedup, preventing duplicates |
| 2 | `02_pivot_and_unpivot.ipynb` | CASE+aggregate pivot, crosstab(), dynamic pivot, UNION ALL unpivot, LATERAL+VALUES unpivot |
| 3 | `03_gaps_islands_and_hierarchies.ipynb` | Gap detection, islands with LAG/LEAD, ROW_NUMBER difference technique, recursive CTEs, ltree extension |

## Key Takeaways

- DISTINCT ON is PostgreSQL's secret weapon for deduplication — simpler and faster than ROW_NUMBER window functions.
- LATERAL joins with VALUES provide the most elegant unpivot pattern in PostgreSQL.
- The "difference of ROW_NUMBER" technique is the standard approach for islands-and-gaps problems.
- Recursive CTEs handle hierarchical data natively — no need for application-level tree traversal.

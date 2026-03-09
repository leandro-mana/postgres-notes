# Chapter 07: Window Functions

This chapter covers PostgreSQL window functions including ranking, value access, aggregate windows, and frame specifications for running and rolling calculations.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_ranking_functions.ipynb` | ROW_NUMBER, RANK, DENSE_RANK, NTILE, PARTITION BY / ORDER BY syntax |
| 2 | `02_value_and_aggregate_windows.ipynb` | LAG, LEAD, FIRST_VALUE, LAST_VALUE, NTH_VALUE, SUM/AVG/COUNT OVER, running totals, moving averages |
| 3 | `03_window_frames.ipynb` | ROWS vs RANGE vs GROUPS, frame bounds, EXCLUDE clause, named windows |

## Key Takeaways

- Window functions let you compute across related rows without collapsing them — unlike GROUP BY.
- Use `ROW_NUMBER` for deduplication, `RANK`/`DENSE_RANK` for tie-aware ranking.
- `LAG`/`LEAD` are essential for change detection and CDC patterns in data engineering.
- Understand frame specifications (ROWS vs RANGE) to avoid subtle bugs in running totals and moving averages.

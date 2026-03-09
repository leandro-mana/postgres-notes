# Chapter 03: SELECT, Filtering & Sorting

This chapter covers the core of SQL querying: selecting data, filtering with WHERE, pattern matching with LIKE/ILIKE/regex, and sorting with ORDER BY including PostgreSQL-specific pagination strategies.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_select_and_where.ipynb` | SELECT columns, SELECT *, SELECT DISTINCT, column aliases, WHERE with comparison operators, AND/OR/NOT, IN, BETWEEN, IS NULL/IS NOT NULL |
| 2 | `02_pattern_matching.ipynb` | LIKE, ILIKE (PG-specific), wildcards (% and _), SIMILAR TO, ~ operator (POSIX regex), case-insensitive matching strategies |
| 3 | `03_sorting_and_pagination.ipynb` | ORDER BY single/multiple columns, ASC/DESC, NULLS FIRST/LAST, LIMIT/OFFSET, keyset pagination, FETCH FIRST N ROWS ONLY |

## Key Takeaways

- `ILIKE` is a PostgreSQL extension for case-insensitive pattern matching — simpler than wrapping in `LOWER()`.
- PostgreSQL supports POSIX regular expressions with the `~` operator directly in WHERE clauses.
- `NULLS FIRST` / `NULLS LAST` gives you explicit control over NULL ordering.
- For large datasets, keyset (cursor-based) pagination vastly outperforms OFFSET pagination.

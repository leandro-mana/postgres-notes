# Chapter 12: JSON, Text & Advanced Types

This chapter explores PostgreSQL's advanced type system: JSONB for semi-structured data, full-text search for natural language queries, and arrays, ranges, and other specialized types.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_jsonb_deep_dive.ipynb` | JSON vs JSONB, JSONB operators (->, ->>, @>, ?), JSONB functions, jsonb_set, GIN indexing, server_logs examples |
| 2 | `02_full_text_search.ipynb` | tsvector, tsquery, @@ operator, ts_rank, GIN indexes, ts_headline, search configurations, book title search |
| 3 | `03_arrays_and_special_types.ipynb` | Array types/operators/functions, range types, composite types, domain types, hstore |

## Key Takeaways

- Use JSONB (not JSON) for queryable semi-structured data — it supports indexing and rich operators.
- PostgreSQL's built-in full-text search is powerful enough for many use cases without external tools like Elasticsearch.
- Arrays are ideal for tag systems; range types excel at temporal and scheduling data.
- Domain types let you create reusable, constrained custom types for consistent data validation.

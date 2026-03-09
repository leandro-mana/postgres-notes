# Chapter 11: Data Modeling & Normalization

This chapter covers relational data modeling principles: normal forms for transactional systems, dimensional modeling for analytics, and slowly changing dimension (SCD) patterns for data warehousing.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_normal_forms.ipynb` | 1NF, 2NF, 3NF, BCNF, when to denormalize, examples with books/authors/categories |
| 2 | `02_dimensional_modeling.ipynb` | Star schema, snowflake schema, fact table types, dimension design, surrogate vs natural keys, junk/degenerate dimensions |
| 3 | `03_slowly_changing_dimensions.ipynb` | SCD Type 0/1/2/3, implementing SCD Type 2 in PostgreSQL, valid_from/valid_to/is_current pattern |

## Key Takeaways

- Normalize (3NF) for OLTP workloads to reduce redundancy and protect data integrity.
- Denormalize (star schema) for analytics workloads to optimize read performance.
- SCD Type 2 is the gold standard for tracking historical changes in dimension tables.
- PostgreSQL's rich constraint system (CHECK, UNIQUE, FK) enforces normalization rules at the database level.

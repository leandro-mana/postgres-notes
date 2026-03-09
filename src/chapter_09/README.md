# Chapter 09: Stored Procedures & Functions (PL/pgSQL)

This chapter covers PL/pgSQL functions, stored procedures (PG 11+), and triggers for event-based automation in PostgreSQL.

## Notebooks

| # | Notebook | Topics Covered |
|---|----------|---------------|
| 1 | `01_functions.ipynb` | SQL functions, PL/pgSQL syntax, input/output parameters, RETURNS TABLE, volatility categories, dollar-quoting |
| 2 | `02_stored_procedures.ipynb` | CREATE PROCEDURE, procedures vs functions, CALL syntax, transaction control, IN/INOUT parameters |
| 3 | `03_triggers_and_automation.ipynb` | BEFORE/AFTER triggers, NEW/OLD records, row vs statement level, audit logging, LISTEN/NOTIFY |

## Key Takeaways

- Use SQL functions for simple calculations and PL/pgSQL for complex logic with control flow.
- Procedures (PG 11+) can manage transactions — functions cannot.
- Mark function volatility correctly (`IMMUTABLE`, `STABLE`, `VOLATILE`) for query optimizer benefits.
- Triggers are essential for audit logging and enforcing complex business rules at the database level.

"""Database connection utilities for Jupyter notebooks.

Provides helper functions to establish PostgreSQL connections using JupySQL magic.
"""

# Connection string for the PostgreSQL Docker container
PG_CONNECTION_STRING = "postgresql+psycopg2://postgres:root_password@localhost:5432/postgres_notes"


def get_connection_string() -> str:
    """Return the PostgreSQL connection string for JupySQL.

    Returns:
        PostgreSQL connection string for the Docker container.
    """
    return PG_CONNECTION_STRING

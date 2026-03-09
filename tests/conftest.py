"""Shared pytest fixtures for PostgreSQL Notes tests."""

import pytest
from sqlalchemy import create_engine, text

from src.common.connection import PG_CONNECTION_STRING


@pytest.fixture(scope="session")
def db_engine():
    """Create a SQLAlchemy engine for testing."""
    engine = create_engine(PG_CONNECTION_STRING)
    yield engine
    engine.dispose()


@pytest.fixture(scope="session")
def db_connection(db_engine):
    """Create a database connection for testing."""
    with db_engine.connect() as conn:
        yield conn


@pytest.fixture
def sample_query():
    """Return a simple test query."""
    return text("SELECT 1 AS test_value")

# Contributing to PostgreSQL Notes

This repository follows a professional, chapter-based workflow inspired by the [learning-python](https://github.com/leandromana/learning-python) and [data-algorithms-with-pyspark](https://github.com/leandromana/data-algorithms-with-pyspark) repository patterns.

## Workflow

### 1. Branch per Chapter

Create a feature branch for each chapter:

```bash
git checkout -b feature/chapter-01
git checkout -b feature/chapter-02
```

### 2. Chapter Structure

Each chapter directory should contain:

```bash
src/chapter_XX/
├── __init__.py            # Module docstring describing the chapter
├── README.md              # Chapter overview, notebook table, key concepts
├── 01_topic_name.ipynb    # Jupyter notebooks (primary content)
├── 02_another_topic.ipynb
└── data/                  # Sample data files if needed
```

### 3. Jupyter Notebooks

Notebooks are the primary learning material. When creating them:

1. Keep each notebook focused on one topic
2. Interleave markdown explanations with executable SQL cells using `%%sql` magic
3. Number notebooks sequentially: `01_topic_name.ipynb`, `02_another_topic.ipynb`
4. Include output for key demonstrations
5. Use type hints in any Python helper cells
6. Each notebook should start with the connection setup cell

### 4. Chapter READMEs

Each chapter README should include:

- **Overview**: Brief chapter summary
- **Notebooks table**: All notebooks with topics covered
- **Key Concepts**: SQL examples showing main ideas
- **References**: Links to PostgreSQL docs and external resources

### 5. Code Quality

Before committing, run all checks:

```bash
# Single command to check everything
make check

# Or individual checks
make lint              # Ruff linter
make format            # Code formatting
make type-check        # mypy type checking
```

### 6. Commit Messages

Write clear commit messages:

- `feat(ch01): Add DDL fundamentals notebooks`
- `feat(ch07): Add window functions notebooks`
- `docs(ch05): Update JOINs chapter README`
- `fix(ch10): Fix transaction isolation example`

### 7. Pull Request

When ready, open a PR with:

- Clear title: `Add Chapter 7 - Window Functions`
- Description of notebooks included and concepts covered

## Code Style

Enforced by `make format` (ruff):

- Line length: 100 characters
- 4 spaces for indentation
- f-strings for formatting
- snake_case for functions/variables
- PascalCase for classes
- UPPER_CASE for constants

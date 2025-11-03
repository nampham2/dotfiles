# Project Context - DQX

## Project Overview

- DQX
- Primary language: Python 3.11+
- Uses uv for dependency management
- Uses pre-commit for code linting

## Key Files and References

@file pyproject.toml
@file .python-version
@file .gitignore
@file README.md

## File Modification Priority

2. **Always check existing examples before creating new ones**
3. **ALL temporary development files go in `.tmp/` directory**
4. **Prefer editing existing files over creating new ones**

## Project Structure

- Tests: `tests/` (matching source structure)
- Examples: `examples/`
- Documentation: `docs/`
- Temporary files: `.tmp/`

## Documentation Rules

- NEVER modify existing files under docs/plans unless you are asked by Nam.

## Virtual Environment

- The project is managed with uv
- Use `uv run` to run commands (python, pytest, ruff, mypy ...) in the virtual environment
- The shell is zsh and not bash. Please generate proper bash scripts.
- YOU MUST NOT USE interactive shell commands.

## Examples

- To run code coverage: `uv run coverage tests/test_symbol_table.py -v`
- To see coverage help: `uv run coverage --help`
- To check and fix some problem for the whole code base, use the pre-commit hook `uv run hooks`. Use `uv run hooks --help` to see all available options.
- To clean up cache files and directories: `uv run cleanup`. Use `uv run cleanup --dry-run` to preview what will be deleted.

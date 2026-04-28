# Project Context

This is the root agent-facing context file. Keep it concise and in English.

## Overview
Task Manager CLI — a command-line tool for managing personal task lists stored as local JSON files.

## Goals
- [ ] Parse and validate CLI commands (add, list, done, delete)
- [ ] Read and write tasks to a local JSON file
- [ ] Display tasks in a formatted table output

## Tech Stack
- Language: Python 3.11
- Framework / Engine: argparse (stdlib)
- Tools: pytest
- Platform: macOS / Linux / Windows

## Module Map
| Module | Role | Depends On | Order | Parallel | Owner |
|---|---|---|---:|---|---|
| core | Task model and business logic | none | 1 | N | |
| storage | JSON file read/write | core | 2 | N | |
| cli | Argument parsing and output formatting | core, storage | 3 | N | |

## Interface Contracts
- core -> storage
  - Output: `Task { id: str, title: str, done: bool }`
- core -> cli
  - Output: `TaskManager.add()`, `.complete()`, `.delete()`, `.list_all()`
- storage -> cli
  - Output: `load_tasks() -> list[Task]`, `save_tasks(tasks) -> None`

## Project Structure
```text
src/
  core/
    CLAUDE.md
    CHANGELOG.md
  storage/
    CLAUDE.md
    CHANGELOG.md
  cli/
    CLAUDE.md
    CHANGELOG.md
```

## Current Status
- Now: Planning complete — ready for implementation
- Done: Module map defined, interfaces agreed
- Next: Implement `core` module first

## Key Decisions
| Decision | Reason |
|---|---|
| JSON over SQLite | No dependencies, easy to inspect manually |
| argparse over click | stdlib only, no install required |

## Constraints
- No external dependencies (stdlib only)
- Single-file JSON store at `~/.tasks.json`

## Out of Scope
- Due dates or priorities
- Sync or cloud storage

## AI Reading Rules
- Do not read all of `docs/` by default.
- Do not read `_internal/` during normal project work.
- Do not read both English and Korean documentation for the same topic.
- When documentation is needed, read only the relevant `.en.md` file.
- Read `.ko.md` files only when the user explicitly asks for Korean documentation.

## References
- Architecture: `docs/ARCHITECTURE.en.md`
- Usage: `docs/USAGE_GUIDE.en.md`
- Setup: `docs/SETUP_GUIDE.en.md`

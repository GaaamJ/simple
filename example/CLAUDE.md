# Project Context

<!-- Active Root Context -->

This is the primary agent-facing context file. Keep it concise and in English.

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
| core | Task data model and business logic | none | 1 | N | |
| storage | JSON file read/write | core | 2 | N | |
| cli | Argument parsing and output formatting | core, storage | 3 | N | |

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

## Changelog Convention

- `CHANGELOG.md` (root): master changelog. Records project-level and cross-module changes. Maintains a **Module Summaries** section with the last 1–2 entries per module.
- `src/[module]/CHANGELOG.md`: full module-specific history. Written by `/implementer` after completing module work.
- After writing, `/implementer` updates the module's entry in the root Module Summaries section (keep last 1–2 lines).

## AI Reading Rules

- Do not read all of `docs/` by default.
- Do not read `_internal/` during normal project work.
- Do not read both English and Korean documentation for the same topic.
- When documentation is needed, read only the relevant `.en.md` file.
- Read `.ko.md` files only when the user explicitly asks for Korean documentation.
- Prefer this file, `BLUEPRINT.md`, `TODO.md`, `CHANGELOG.md`, `src/[module]/CLAUDE.md` over broad repository scans.

## References

- Architecture: `docs/ARCHITECTURE.en.md`
- Usage: `docs/USAGE_GUIDE.en.md`
- Setup: `docs/SETUP_GUIDE.en.md`

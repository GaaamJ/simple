# Project Context

<!-- Active Root Context -->

This is the primary agent-facing context file. Keep it concise and in English.

## Overview

TBD

## Goals

- TBD

## Tech Stack

- Language: TBD
- Framework / Engine: TBD
- Tools: TBD
- Platform: TBD

## Module Map

| Module | Role | Depends On | Order | Parallel | Owner |
|---|---|---|---:|---|---|

## Current Status

- Now: TBD
- Done: TBD
- Next: TBD

## Key Decisions

| Decision | Reason |
|---|---|

## Constraints

- TBD

## Out of Scope

- TBD

## Changelog Convention

- `CHANGELOG.md` (root): master changelog. Records project-level and cross-module changes. Maintains a **Module Summaries** section with the last 1-3 entries per module so agents see recent module activity without reading each module file (same relationship as root `CLAUDE.md` to `src/[module]/CLAUDE.md`).
- `src/[module]/CHANGELOG.md`: full module-specific history. Created by Planner alongside `src/[module]/CLAUDE.md`. Written by the implementer after completing module work.
- After writing, the implementer updates the module's entry in the root Module Summaries section (keep last 1-3 lines).
- Archive trigger: when either root `CHANGELOG.md` or `src/[module]/CHANGELOG.md` exceeds 15 dated sections, archive entries older than 30 days to `_archive/CHANGELOG_[YYYY-MM].md`.
- Module retirement archives `src/[module]/CLAUDE.md` and `src/[module]/CHANGELOG.md` to `_archive/[module]/`.

## AI Reading Rules

- Do not read all of `docs/` by default.
- Do not read `_internal/` during normal project work. It is for template maintainers.
- Do not read both English and Korean documentation for the same topic.
- When documentation is needed, read only the relevant `.en.md` file.
- Read `.ko.md` files only when the user explicitly asks for Korean documentation.
- Prefer this file, `BLUEPRINT.md`, `TODO.md`, `CHANGELOG.md`, `src/[module]/CLAUDE.md`, and `src/[module]/CHANGELOG.md` over broad repository scans.

## References

- Architecture: `docs/ARCHITECTURE.en.md`
- Usage: `docs/USAGE_GUIDE.en.md`
- Setup: `docs/SETUP_GUIDE.en.md`
- Skills: `docs/SKILLS.en.md`

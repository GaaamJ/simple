# Project Context

This is the primary agent-facing context file. Keep it concise and in English.

## Overview

A workflow environment for AI-assisted planning and implementation. Provides structured conventions so Claude Code agents read only the minimal context needed per task, reducing token use and context drift.

## Goals

- [ ] Establish clear identity as a workflow environment (not a project template)
- [ ] Provide working examples of all root workflow documents
- [ ] Ship doctor scripts that validate workflow environment integrity
- [ ] Keep docs accurate and bilingual (English canonical, Korean translation)

## Tech Stack

- Language: Markdown, bash, bat
- Framework / Engine: Claude Code (skills system)
- Tools: `/today`, `/implementer`, `/retire-module`
- Platform: Claude Code CLI / VSCode extension

## Module Map

| Module | Role | Depends On | Order | Parallel | Owner |
|---|---|---|---:|---|---|
| _(none yet)_ | `src/` is empty until user adds modules | — | — | — | — |

## Current Status

- Now: Identity & Positioning — removing "template" wording, rewriting root workflow documents
- Done: TODO.md restructured and translated to Korean; `_internal/TEMPLATE_CHANGELOG.md` created
- Next: Root Workflow Documents — rewrite BLUEPRINT.md and CHANGELOG.md

## Key Decisions

| Decision | Reason |
|---|---|
| Workflow environment, not template | "Template" implies code generation; this repo provides conventions and skills |
| Agent-facing files in English | Consistent with Claude Code conventions; reduces ambiguity in skill prompts |
| Per-module CHANGELOG.md | Keeps root changelog focused on cross-module and project-level changes |
| `_internal/` for maintainer work | Prevents AI agents from reading maintenance files during normal project sessions |

## Constraints

- Agent-facing files must stay in English
- Human-facing docs must have both `.en.md` and `.ko.md` versions
- `_internal/` must not be read during normal project work (`/today`, `/implementer`, etc.)
- Root `CHANGELOG.md` records only project-level and cross-module changes

## Out of Scope

- Generating application code or project boilerplate
- Replacing or wrapping existing IDEs or frameworks
- Notion integration (deferred — no implementation yet)

## Changelog Convention

- `CHANGELOG.md` (root): master changelog. Records project-level and cross-module changes. Maintains a **Module Summaries** section with the last 1–2 entries per module — so `/today` sees recent module activity without reading each module file.
- `src/[module]/CHANGELOG.md`: full module-specific history. Created by Planner alongside `src/[module]/CLAUDE.md`. Written by `/implementer` after completing module work.
- After writing, `/implementer` updates the module's entry in the root Module Summaries section (keep last 1–2 lines).
- Archive trigger: when either root `CHANGELOG.md` or `src/[module]/CHANGELOG.md` exceeds 15 dated sections, archive entries older than 30 days to `_archive/CHANGELOG_[YYYY-MM].md`.
- Module retirement: use `/retire-module`. Archives `src/[module]/CLAUDE.md` and `src/[module]/CHANGELOG.md` to `_archive/[module]/`.

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

# Architecture

> Canonical document. Korean translation: `docs/ARCHITECTURE.ko.md`.

This is a workflow environment — a structured context for AI-assisted development. It defines how planning, implementation, and status tracking move between Planner, Team Lead, and Teammate roles. It is not an application code template.

## Workflow

```text
Planner
  -> writes CLAUDE.md, BLUEPRINT.md, and module CLAUDE.md files
  -> creates src/[module]/CHANGELOG.md stub alongside each module CLAUDE.md
  -> records intended work in TODO.md

Team Lead
  -> reads only the minimum implementation context
  -> validates module boundaries and execution order
  -> implements directly or assigns independent module work

Teammate
  -> works only inside the assigned module scope
  -> returns results to Team Lead

Team Lead
  -> validates integration
  -> updates TODO.md
  -> records module-level completion in src/[module]/CHANGELOG.md
  -> updates Module Summaries in root CHANGELOG.md (last 1–2 entries per module)
  -> records cross-module or project-level changes in root CHANGELOG.md
```

## Role Boundaries
| Role | Owns | Must Avoid |
|---|---|---|
| Planner | project shape, module map, contracts, planning docs | implementation code |
| Team Lead | validation, execution mode, integration, final review | guessing missing plans by scanning every doc |
| Teammate | assigned module implementation | unrelated modules |

## Core Files
| File | Purpose |
|---|---|
| `CLAUDE.md` | concise project context and AI reading rules |
| `BLUEPRINT.md` | execution order, module ownership, interfaces |
| `src/[module]/CLAUDE.md` | module-specific implementation contract |
| `TODO.md` | current work only: Today, Next, Blocked |
| `CHANGELOG.md` | master changelog: project-level changes + Module Summaries (last 1–2 entries per module) |
| `src/[module]/CHANGELOG.md` | full module-specific completed work history |

## Documentation Split
- Architecture details live here.
- Usage procedure lives in `docs/USAGE_GUIDE.en.md`.
- Setup procedure lives in `docs/SETUP_GUIDE.en.md`.
- Command and skill details live in `docs/SKILLS.en.md`.

## Context Policy
- AI agents should not read all docs by default.
- AI agents should read English docs first and only when needed.
- Korean docs are human-facing translations and should be read only when requested.

## Glossary

| Term | Definition |
|---|---|
| workflow environment | This repository structure and its AI instruction files. Defines how planning, implementation, and status tracking are organized across agent roles. |
| root context | The minimum files an agent reads to understand project state: `CLAUDE.md`, `BLUEPRINT.md`, `TODO.md`, and `CHANGELOG.md`. |
| execution blueprint | `BLUEPRINT.md` — the phase-based execution plan defining module order, ownership, and interfaces. |
| module contract | `src/[module]/CLAUDE.md` — the scoped implementation contract for a single module. |
| Planner | The agent role that writes planning documents and defines project shape. Does not write implementation code. |
| Team Lead | The agent role that validates scope, executes or delegates implementation, and integrates results. |
| Teammate | An agent working within a single assigned module. Returns results to Team Lead. |

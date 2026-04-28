# AI Pipeline Template

This repository is a lightweight workflow template for AI-assisted planning and implementation. Its main goal is to reduce context and token use by making each agent read only the files needed for the current task.

## Core Policy
- Agent-facing files are written in English.
- Human-facing docs are split into `.en.md` canonical files and `.ko.md` Korean translations.
- AI agents should read English docs only when needed.
- AI agents should read Korean docs only when the user explicitly asks for Korean documentation.
- `_internal/` is for template maintenance, not normal project work.

## Main Files
| File | Purpose |
|---|---|
| `CLAUDE.md` | compact project context and AI reading rules |
| `BLUEPRINT.md` | execution order, module ownership, interface contracts |
| `TODO.md` | current work only: Today, Next, Blocked |
| `CHANGELOG.md` | master changelog: project-level changes + Module Summaries |
| `src/[module]/CHANGELOG.md` | module-specific completed work history |
| `.claude/skills/today/SKILL.md` | `/today` reading and briefing rules |
| `.claude/skills/implementer/SKILL.md` | `/implementer` scope and implementation rules |

## Documentation
Start with `docs/README.md`.

- Architecture: `docs/ARCHITECTURE.en.md` / `docs/ARCHITECTURE.ko.md`
- Usage: `docs/USAGE_GUIDE.en.md` / `docs/USAGE_GUIDE.ko.md`
- Setup: `docs/SETUP_GUIDE.en.md` / `docs/SETUP_GUIDE.ko.md`
- Skills: `docs/SKILLS.en.md` / `docs/SKILLS.ko.md`

English docs are the source of truth. Korean docs are human-facing translations.

## Typical Flow
1. Planner writes `CLAUDE.md`, `BLUEPRINT.md`, module `CLAUDE.md` files, and initial `TODO.md`.
2. `/today` reads `TODO.md` and `CHANGELOG.md` to recommend a small next task.
3. `/implementer [task]` reads only the root context, blueprint, TODO, and relevant module context.
4. Completed module work moves to `src/[module]/CHANGELOG.md`; cross-module changes go to root `CHANGELOG.md`.

See `docs/README.md` for all documentation entry points.

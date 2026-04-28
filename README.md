# AI Workflow Environment

A workflow environment for AI-assisted planning and implementation with Claude Code. Its core goal is to reduce context and token use by making each agent read only the files needed for the current task.

## What this is

- A structured workflow environment — not a code generator or boilerplate
- A set of conventions that let Claude Code agents stay focused and minimal
- A starting point for modular AI-assisted projects: each module gets its own context, changelog, and owner
- A collection of Claude Code skills (`/today`, `/implementer`, `/retire-module`) that enforce the workflow

## What this is not

- A project template that generates application code
- A framework or library to install as a dependency
- A replacement for your own project structure — `src/` is yours to organize

## Core Policy

- Agent-facing files are written in English.
- Human-facing docs are split into `.en.md` canonical files and `.ko.md` Korean translations.
- AI agents read English docs only when needed; Korean docs only when explicitly asked.
- `_internal/` is for workflow environment maintenance, not normal project work.

## Main Files

| File | Purpose |
|---|---|
| `CLAUDE.md` | Root context: project overview, module map, AI reading rules |
| `BLUEPRINT.md` | Execution order, module ownership, interface contracts |
| `TODO.md` | Active work queue |
| `CHANGELOG.md` | Master changelog: project-level changes + Module Summaries |
| `src/[module]/CLAUDE.md` | Module-specific context |
| `src/[module]/CHANGELOG.md` | Module-specific completed work history |

## Skills

| Skill | Trigger | Purpose |
|---|---|---|
| `/today` | Start of session | Reads TODO + CHANGELOG, recommends next task |
| `/implementer [task]` | Begin a task | Reads minimal context, implements scoped work |
| `/retire-module [name]` | Module is done | Archives module context and changelog |

## Typical Flow

1. Fill in `CLAUDE.md`, `BLUEPRINT.md`, and `TODO.md` for your project.
2. `/today` reads the work queue and recommends a next task.
3. `/implementer [task]` reads only what it needs and implements the task.
4. Completed work moves to `src/[module]/CHANGELOG.md`; cross-module changes go to root `CHANGELOG.md`.

## Documentation

English `.en.md` files are canonical. Korean `.ko.md` files are human-facing translations.

**English**
- [Architecture](docs/ARCHITECTURE.en.md) — workflow structure and role boundaries
- [Usage Guide](docs/USAGE_GUIDE.en.md) — day-to-day workflow
- [Setup Guide](docs/SETUP_GUIDE.en.md) — tool installation and configuration
- [Skills](docs/SKILLS.en.md) — `/today` and `/implementer` behavior

**한국어**
- [아키텍처](docs/ARCHITECTURE.ko.md) — 작업 흐름과 역할 경계
- [사용 가이드](docs/USAGE_GUIDE.ko.md) — 일상 작업 흐름
- [설치 가이드](docs/SETUP_GUIDE.ko.md) — 도구 설치와 설정
- [스킬](docs/SKILLS.ko.md) — `/today`, `/implementer` 동작

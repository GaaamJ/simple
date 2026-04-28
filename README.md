# Simple

A lightweight Claude Code workflow template for any project.

Simple helps you keep Claude Code focused by separating project context,
tasks, changelogs, and module-level instructions.

- Not an app framework
- Not a code generator
- Not a dependency
- Just a clean workflow scaffold for Claude Code

Simple
├─ CLAUDE.md        project context
├─ BLUEPRINT.md     architecture direction
├─ TODO.md          current work
├─ CHANGELOG.md     recent changes
├─ .claude/skills   slash-command workflows
└─ example/         filled sample project

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

## Quickstart

> Currently, Simple provides a Windows setup script only.
> macOS/Linux setup scripts are not provided yet.

```bash
# 1. Clone
git clone https://github.com/GuReum/Simple.git
cd Simple

# 2. Install Claude Code
npm install -g @anthropic-ai/claude-code

# 3. Set up Planner
#    Open Claude Desktop → Project → paste planner/PLANNER_PROJECT.md into Project Instructions
#    Update the Project Path placeholder to your absolute project root

# 4. Ask Planner to initialize your project
#    "Initialize a new project for [your description]"
#    Planner writes: CLAUDE.md, BLUEPRINT.md, src/[module]/CLAUDE.md

# 5. Start working
/today               # see what to work on
/implementer [task]  # implement it
```

> **This repo ships intentionally sparse.** `CLAUDE.md`, `BLUEPRINT.md`, and `TODO.md` are skeleton files — fill them in for your project. The `src/` directory is yours; no application code is generated.

> **Project memory.** Claude Code builds a persistent memory store at `.claude/projects/<path>/memory/` as you work. Agents use it to remember decisions, user preferences, and project context across sessions — no extra setup required.

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

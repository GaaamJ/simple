# Template Changelog

> Tracks changes to the Simple workflow environment template itself.
> For user project changelogs, use root `CHANGELOG.md` — not this file.
> When sections exceed 15, archive entries older than 30 days to `_archive/TEMPLATE_CHANGELOG_[YYYY-MM].md`.

## [Unreleased]

_No unreleased changes._

---

## [v1.0.0] — 2026-04-28

### Core Skills
- `/today` — session orientation; reads `TODO.md` and `CHANGELOG.md` only
- `/implementer` — scoped implementation; validates scope, updates module and root changelogs
- `/retire-module` — safe module retirement; dependency check → plan → execute

### Workflow Structure
- Planner → Team Lead → Teammate role model with explicit boundaries
- `BLUEPRINT.md` as execution blueprint (phase-based, module-ordered)
- Modular changelog: root `CHANGELOG.md` + per-module `src/[module]/CHANGELOG.md`
- `_internal/` for template-maintainer context, invisible to normal agent flows

### Documentation
- EN/KO doc pairs: ARCHITECTURE, USAGE_GUIDE, SETUP_GUIDE, SKILLS
- Glossary in ARCHITECTURE: workflow environment, root context, execution blueprint, module contract
- Example project at `examples/minimal/`
- All docs reframed as workflow environment (removed template-oriented language)

### Tooling
- `setup.bat` with integrated doctor checks (file existence, placeholder detection, language pairs)
- `scripts/doctor.sh` for Unix environments
- Claude Desktop Filesystem MCP setup
- Agent Teams support (`CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS`)
- Planner via Claude Desktop Project Instructions (`planner/PLANNER_PROJECT.md`)
- GitHub Releases flow via `.github/workflows/release.yml`

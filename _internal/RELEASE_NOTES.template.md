# Release Notes — v0.1.0

## Summary

First public release of Simple — a lightweight GitHub template that provides context files, skills, and conventions for Claude Code to work with your project more predictably.

## What's New

### Skills
- `/today` — reads TODO + CHANGELOG and recommends the next task
- `/implementer` — reads minimal context and implements scoped work
- `/retire-module` — safely archives a completed module's context and changelog

### Workflow Conventions
- Modular changelog system: per-module `CHANGELOG.md` + root Module Summaries
- `CLAUDE.md` / `BLUEPRINT.md` / `TODO.md` skeleton templates
- `_internal/` separation — template maintenance files stay out of normal project work
- Bilingual docs: canonical `.en.md` + Korean `.ko.md` translations

### Tooling
- `scripts/doctor.sh` — validates reference links and language-pair completeness
- `.github/workflows/release.yml` — CI release workflow with SHA-pinned actions; runs doctor before creating the draft release
- `.gitattributes` — enforces LF line endings for `.sh`, `.yml`, `.yaml`

## Breaking Changes

- None (first release)

## Migration

- None (first release)

---

_Full history: [`_internal/TEMPLATE_CHANGELOG.md`](_internal/TEMPLATE_CHANGELOG.md)_

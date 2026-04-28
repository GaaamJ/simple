# Template Maintenance Tasks

> This is an internal template-maintenance document.
> User project work belongs in root `TODO.md`.
> Normal AI implementation work should not read `_internal/`.

---

# Priority Tasks

## P0 - Separate Template Tasks From User Project Tasks

Goal: keep template maintenance tasks out of user project workflows.

- [x] Create `_internal/`
- [x] Move template task tracking into `_internal/TEMPLATE_TASKS.md`
- [x] Add `_internal/README.md`
- [x] Remove user-facing references to old template task docs
- [x] State that normal AI work should not read `_internal/`

Done criteria:

- [x] Template tasks are separated from user project tasks
- [x] Root `TODO.md` is reserved for user project work
- [x] `_internal/` is marked as template-maintainer-only context

---

## P1 - Reduce Token Use

Goal: make agents read only the files needed for the current task.

### 1. Default Reading Rules

- [x] State that AI should not read all of `docs/` by default
- [x] State that AI should not read `_internal/` by default
- [x] State that AI should not read Korean and English docs for the same topic together
- [x] State that English docs are the default when documentation is needed
- [x] State that Korean docs are read only when the user requests them

### 2. Command Reading Scope

- [x] Minimize `/today` reading scope
  - [x] `TODO.md`
  - [x] `CHANGELOG.md`
  - [x] `BLUEPRINT.md` only when needed
- [x] Minimize `/implementer` reading scope
  - [x] `CLAUDE.md`
  - [x] `BLUEPRINT.md`
  - [x] `TODO.md`
  - [x] relevant `src/[module]/CLAUDE.md`
- [x] State that `/today` must not implement
- [x] State that `/implementer` must not read or edit unrelated modules
- [x] State that missing docs should not trigger broad document scans

### 3. Reduce Documentation Duplication

- [x] Keep structure details in `ARCHITECTURE`
- [x] Keep usage procedure in `USAGE_GUIDE`
- [x] Keep setup procedure in `SETUP_GUIDE`
- [x] Keep command descriptions in `SKILLS`
- [x] Use links instead of long repeated explanations in other docs
- [x] Avoid repeating Planner / Team Lead / Teammate role details across many docs

### 4. TODO / CHANGELOG Compression

- [x] Keep `TODO.md` focused on current work
- [x] Keep only `Today / Next / Blocked` at the top of `TODO.md`
- [x] Move completed old work to `CHANGELOG.md`
- [x] Keep recent summary at the top of `CHANGELOG.md`
- [x] Document that old history can move to `_archive/` when needed

Done criteria:

- [x] `/today` works by default from `TODO.md` and `CHANGELOG.md`
- [x] `/implementer` works by default from `CLAUDE.md`, `BLUEPRINT.md`, `TODO.md`, and relevant module docs
- [x] Normal implementation does not read `_internal/`
- [x] Normal implementation does not read Korean and English docs together
- [x] Documentation duplication is reduced

---

## P2 - Clarify README Direction

Goal: make the root README describe this repository as an AI workflow template.

- [x] Replace root `README.md` with a template overview
- [x] Explain that this is not an application code template
- [x] Link to canonical docs
- [x] Explain core file roles briefly
- [x] Mention the difference between root `TODO.md` and `_internal/TEMPLATE_TASKS.md`

Done criteria:

- [x] GitHub landing page clearly presents the repository as a template
- [x] User project README placeholders are not mixed with the template README

---

## P3 - Language Policy Cleanup

Goal: keep agent-facing files English-first and split human-facing docs into English/Korean versions.

- [x] Convert agent-facing files to English
  - [x] `CLAUDE.md`
  - [x] `BLUEPRINT.md`
  - [x] `TODO.md`
  - [x] `CHANGELOG.md`
  - [x] `.claude/commands/*` (no command files currently present)
  - [x] `.claude/skills/*`
  - [x] `src/[module]/CLAUDE.md` template
- [x] Split human-facing docs into English/Korean pairs
  - [x] `docs/ARCHITECTURE.en.md`
  - [x] `docs/ARCHITECTURE.ko.md`
  - [x] `docs/USAGE_GUIDE.en.md`
  - [x] `docs/USAGE_GUIDE.ko.md`
  - [x] `docs/SETUP_GUIDE.en.md`
  - [x] `docs/SETUP_GUIDE.ko.md`
  - [x] `docs/SKILLS.en.md`
  - [x] `docs/SKILLS.ko.md`
- [x] Mark English docs as canonical
- [x] Mark Korean docs as human-facing translations
- [x] State that AI reads English docs by default
- [x] State that `.ko.md` is read only when the user requests Korean docs

Done criteria:

- [x] AI instruction files are English
- [x] Docs are organized as `.en.md` / `.ko.md` pairs
- [x] English docs are canonical
- [x] Korean docs are human-facing translations

---

## P4 - Stabilize Minimal Documentation Structure

Goal: make the documentation entry points clearer for users and agents.

- [x] Consider adding `docs/README.md`
- [x] Link language-specific docs from `docs/README.md`
- [x] Link root `README.md` to `docs/README.md` if added
- [x] Verify all documentation links

Done criteria:

- [x] Root README has a clear documentation entry point
- [x] Docs README, if added, exposes both language tracks
- [x] Document responsibilities do not overlap

---

# Deferred Tasks

## Example Project

- [ ] Add `examples/`
- [ ] Create a minimal example project
- [ ] Include example `CLAUDE.md`, `BLUEPRINT.md`, and `TODO.md`

## Doctor Scripts

- [ ] Add `scripts/doctor.bat`
- [ ] Add `scripts/doctor.sh`
- [ ] Check documentation paths
- [ ] Check README links
- [ ] Check docs language pairs

## Release Workflow

- [ ] Design version tags
- [ ] Create GitHub Releases flow
- [ ] Separate template changelog from project changelog if needed

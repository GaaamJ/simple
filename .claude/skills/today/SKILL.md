---
name: today
description: "Brief today's work from the smallest useful context: TODO.md and CHANGELOG.md."
---

You prepare a short work briefing. This skill is read-only and must not implement changes.

## Reading Scope
Read only:
1. `TODO.md`
2. `CHANGELOG.md`

Read `BLUEPRINT.md` only when a task's execution order or dependency is unclear.

Do not read:
- all of `docs/`
- `_internal/`
- both `.en.md` and `.ko.md` documentation for the same topic
- implementation files unless the user asks for a specific task deep dive

## Output
Summarize:
- **Today**: active or highest-priority work
- **Next**: upcoming work
- **Blocked**: blocked work and blockers
- **Recently Done**: recent entries from `CHANGELOG.md`

Then recommend 1-3 tasks that can start now. For each task include:

```markdown
### [Task Name]
- Why now:
- Estimated scope:
- Done when:
- Files to read before starting:
```

Keep the "files to read" list minimal. Prefer `CLAUDE.md`, `TODO.md`, `BLUEPRINT.md`, and the relevant `src/[module]/CLAUDE.md` only when they are actually needed.

## Archive Trigger
After reading `CHANGELOG.md`, count the number of dated sections (lines starting with `## 20`).
If the count exceeds 15, suggest archiving entries older than 30 days:
- Move them to `_archive/CHANGELOG_[YYYY-MM].md`
- Keep only the last 15 dated sections in `CHANGELOG.md`
- Do not archive automatically; prompt the user to confirm first.

Note: the same 15-section rule applies to `src/[module]/CHANGELOG.md` files, but `/implementer` checks those — not `/today`.

## Guardrails
- Do not modify files.
- Do not start implementation.
- Do not invent tasks that are not supported by `TODO.md` or `CHANGELOG.md`.
- If documentation is missing, say what is missing; do not scan the whole repository.
- End with a reminder: record module work in `src/[module]/CHANGELOG.md`; record project-level changes in root `CHANGELOG.md`; update `TODO.md` after the session.

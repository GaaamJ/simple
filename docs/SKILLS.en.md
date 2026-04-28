# Skills

> Canonical document. Korean translation: `docs/SKILLS.ko.md`.

Detailed command behavior lives here so other docs can link instead of repeating it.

## Primary Daily Skills

### `/today`
Use at the start of a session to pick a small next task.

Reads:
- `TODO.md`
- `CHANGELOG.md`
- `BLUEPRINT.md` only when dependencies are unclear

Does not:
- implement changes
- read all docs
- read `_internal/`
- read Korean docs unless requested

**When to use:**
- Opening a session and not sure what to work on next
- After a long break, to re-orient before implementing
- When you want a concise summary of current project state

### `/implementer`
Use when you are ready to implement a named task, feature, or module.

Reads:
- `CLAUDE.md`
- `BLUEPRINT.md`
- `TODO.md`
- relevant `src/[module]/CLAUDE.md`
- `src/[module]/CHANGELOG.md` always, before starting module work
- root `CHANGELOG.md` only for cross-module or project-level context

After completing work, updates `src/[module]/CHANGELOG.md` and syncs the Module Summaries entry in root `CHANGELOG.md`.

Does not:
- read unrelated modules
- modify unrelated modules
- read `_internal/`
- read both English and Korean docs for the same topic

**When to use:**
- After `/today` identifies a specific task to implement
- When you have a clear module name or task description ready
- For any scoped implementation: new feature, bug fix, or module update

**Typical session flow:**
```text
/today              -> identify the next task
/implementer [task] -> implement it
                    -> update changelogs and TODO.md
```

---

## Other Skills

### `/retire-module`
Use to retire a module that is no longer needed.

Reads:
- `CLAUDE.md`
- `BLUEPRINT.md`
- `TODO.md`
- `src/[module]/CLAUDE.md` and `src/[module]/CHANGELOG.md` for the target module
- `src/[other-module]/CLAUDE.md` for dependency scanning

Three steps: dependency check → plan (waits for confirmation) → execute.

Execute order: update workflow files → delete code → archive `CLAUDE.md` and `CHANGELOG.md` to `_archive/[module]/`.

Does not:
- proceed if a blocking dependency is unresolved
- modify or delete files in `_archive/`

---

## Adding Skills
Create:

```text
.claude/skills/[skill-name]/SKILL.md
```

Keep each skill's reading scope explicit and minimal.

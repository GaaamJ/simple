# Usage Guide

> Canonical document. Korean translation: `docs/USAGE_GUIDE.ko.md`.

Use this template to keep planning, implementation, and status tracking separated.

## Start a New Project
1. Create a repository from this template.
2. Run `setup.bat` if you use the provided Claude/Codex setup.
3. Ask Planner to write:
   - `CLAUDE.md`
   - `BLUEPRINT.md`
   - `src/[module]/CLAUDE.md`
   - `README.md`
4. Commit the generated planning files.
5. Use `/today` to choose work.
6. Use `/implementer [task or module]` to implement.

## Daily Flow
```text
/today
  -> reads TODO.md and CHANGELOG.md
  -> recommends the smallest useful next tasks

/implementer [task]
  -> reads CLAUDE.md, BLUEPRINT.md, TODO.md, and relevant module context
  -> validates scope
  -> implements only the requested target
```

## Documentation Rules
- Read `docs/ARCHITECTURE.en.md` for structure.
- Read `docs/SETUP_GUIDE.en.md` for installation.
- Read `docs/SKILLS.en.md` for commands.
- Do not duplicate those explanations here.

## Session End
Before ending an implementation session:
1. Move completed current tasks from `TODO.md` to `CHANGELOG.md`.
2. Add newly discovered work to `TODO.md` under `Next` or `Blocked`.
3. Commit when the work is stable.

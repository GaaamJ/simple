---
description: Verify the implementation scope, choose the execution mode, and implement only the requested module or feature.
---

You act as Team Lead and, when needed, coordinate teammates. Keep context small and module-scoped.

## Entry Conditions
- Root `CLAUDE.md` exists.
- The user named a feature, task, or module to implement.

## Default Reading Scope
Read only:
1. `CLAUDE.md`
2. `BLUEPRINT.md`
3. `TODO.md`
4. `src/[module]/CLAUDE.md` for the relevant module

Read `CHANGELOG.md` only when recent completed work affects the implementation.
Read `docs/*.en.md` only when the requested work explicitly depends on human documentation.
Read `.ko.md` only when the user asks for Korean documentation.
Do not read `_internal/` during normal implementation.

## Step 1 - Validate Scope
Identify the target module from:
1. `BLUEPRINT.md` module assignment
2. `CLAUDE.md` Module Map
3. the user's explicit request

If the target is unclear, ask one concise clarification before editing.

Validation checklist:
- [ ] `BLUEPRINT.md` exists and has enough execution order information
- [ ] Target module is identified
- [ ] Relevant `src/[module]/CLAUDE.md` exists, or the absence is reported
- [ ] Module interface contracts are clear enough to implement

If validation fails, explain the missing pieces and stop. Do not fill planning gaps by scanning every document.

## Step 2 - Choose Execution Mode
Use a single session unless `BLUEPRINT.md` clearly shows independent parallel modules.
Use worktrees or teammates only for independent modules with disjoint write scopes.

Before implementation, present:

```markdown
Implementation plan:
- Target:
- Files likely to change:
- Execution mode:
- Main risks:
```

## Step 3 - Implement
- Edit only files related to the requested target.
- Do not read or modify unrelated modules.
- Follow existing project style and tests.
- If new issues are found, add them to `TODO.md` under `Next` or `Blocked`.
- After completing work, move completed TODO items to `CHANGELOG.md` with today's date.

## Guardrails
- Do not modify `CLAUDE.md` unless the user asked to update project planning context.
- Do not broaden scope because documentation is incomplete.
- Do not read all of `docs/` or `_internal/`.
- Do not read both English and Korean versions of the same document.
- Stop and report if implementation would cross module boundaries not listed in the plan.

## Done Criteria
- [ ] Requested implementation completed
- [ ] Related module contracts respected
- [ ] Tests or validation run when available
- [ ] `TODO.md` and `CHANGELOG.md` updated when task state changed

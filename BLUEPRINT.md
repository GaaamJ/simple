# Blueprint

This file defines how the project should be implemented. `CLAUDE.md` explains what the project is; this file explains the execution plan.

## Execution Flow

```text
[module-a] (teammate-1)
    -> output: {}
[module-b] (teammate-2) -- can run after module-a
[module-c] (teammate-3) -- can run after module-a
    -> [module-d] (teammate-4)
```

## Module Assignment
| Module | Owner | Prerequisites | Parallel Group |
|---|---|---|---|
| module-a | teammate-1 | none | none |
| module-b | teammate-2 | module-a | group-1 |
| module-c | teammate-3 | module-a | group-1 |
| module-d | teammate-4 | module-b, module-c | none |

## Module Interfaces
| Producer | Consumer | Data Contract |
|---|---|---|
| module-a | module-b | `{ field: type }` |
| module-a | module-c | `{ field: type }` |
| module-b | module-d | `{ field: type }` |
| module-c | module-d | `{ field: type }` |

## Implementation Rules
- Read this file only when execution order, module boundaries, or data contracts are needed.
- Do not expand into unrelated modules.
- If a module contract is missing, ask for clarification or return to planning instead of scanning all docs.
- Keep detailed architecture in `docs/ARCHITECTURE.en.md`; keep this file focused on execution.

## Done Criteria
- [ ] Execution flow reviewed
- [ ] All teammate work completed
- [ ] Module interface contracts verified
- [ ] Each module's completed work recorded in `src/[module]/CHANGELOG.md`
- [ ] Root `CHANGELOG.md` Module Summaries updated for each module (last 1–2 entries)
- [ ] Final result reviewed and committed

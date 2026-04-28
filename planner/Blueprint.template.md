# Blueprint

This file is written by Planner and read by Team Lead before implementation. Keep it in English and focused on execution.

## Execution Flow
Use a small ASCII diagram showing order and parallel work.

```text
[module-a] (teammate-1)
    -> output: { field: type }
[module-b] (teammate-2) -- parallel group-1
[module-c] (teammate-3) -- parallel group-1
    -> [module-d] (teammate-4)
```

## Module Assignment
| Module | Owner | Prerequisites | Parallel Group |
|---|---|---|---|
| [module-name] | [teammate-name] | none | none |
| [module-name] | [teammate-name] | [module-name] | group-1 |

## Module Interfaces
| Producer | Consumer | Data Contract |
|---|---|---|
| [module-name] | [module-name] | `{ field: type }` |

## Implementation Rules
- Keep structure details in `docs/ARCHITECTURE.en.md`.
- Keep this file focused on execution order and interfaces.
- Do not add long usage or setup instructions here.
- If an interface is unknown, mark it as missing instead of guessing.

## Done Criteria
- [ ] Execution flow reviewed
- [ ] All teammate work completed
- [ ] Module interface contracts verified
- [ ] Final result reviewed and committed

# Blueprint

This file is written by Planner and read by Team Lead before implementation.

## Execution Flow

```text
[core] (implementer)
    -> output: Task dataclass, TaskManager class
[storage] (implementer) -- depends on core
    -> output: load_tasks(), save_tasks()
[cli] (implementer) -- depends on core + storage
    -> output: main() entrypoint, formatted table
```

## Module Assignment
| Module | Owner | Prerequisites | Parallel Group |
|---|---|---|---|
| core | implementer | none | none |
| storage | implementer | core | none |
| cli | implementer | core, storage | none |

## Module Interfaces
| Producer | Consumer | Data Contract |
|---|---|---|
| core | storage | `Task { id: str, title: str, done: bool }` |
| core | cli | `TaskManager.add(title) -> Task` |
| storage | cli | `load_tasks() -> list[Task]`, `save_tasks(tasks: list[Task]) -> None` |

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

# Blueprint

<!-- Active Execution Blueprint -->

This file defines how the project should be implemented.

## Execution Flow

```text
[core] — Task model, validation, business logic
    -> output: Task dataclass, TaskManager class
[storage] — depends on core
    -> output: load_tasks(), save_tasks()
[cli] — depends on core + storage
    -> output: main() entrypoint, formatted table output
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

- Read this file only when execution order, module boundaries, or data contracts are needed.
- Do not expand into unrelated modules.
- If a module contract is missing, ask for clarification or return to planning.

## Done Criteria

- [ ] `core` module implemented and tested
- [ ] `storage` module implemented and tested
- [ ] `cli` module implemented and tested
- [ ] All module CHANGELOGs written
- [ ] Root CHANGELOG Module Summaries updated

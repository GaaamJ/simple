# core Context

This file is the only module-specific context a teammate should need for this module.

## Role
Task data model and business logic. No I/O, no CLI concerns.

## Responsibilities
- Define `Task` dataclass (`id`, `title`, `done`)
- Implement `TaskManager` with `add()`, `complete()`, `delete()`, `list_all()`
- Generate unique task IDs (uuid4)

## Interface
### Input
- From: (none — this is the root module)
- Data: `title: str` passed by caller

### Output
- To: `storage`, `cli`
- Data:
  ```python
  @dataclass
  class Task:
      id: str
      title: str
      done: bool = False

  class TaskManager:
      def add(self, title: str) -> Task: ...
      def complete(self, task_id: str) -> None: ...
      def delete(self, task_id: str) -> None: ...
      def list_all(self) -> list[Task]: ...
  ```

## Dependencies
- (none)

## Tech Stack
No module-specific additions — uses Python 3.11 stdlib only (`uuid`, `dataclasses`).

## File Structure
```text
core/
  CLAUDE.md
  CHANGELOG.md
  task.py         ← Task dataclass
  manager.py      ← TaskManager class
  tests/
    test_manager.py
```

## Current Status

<!-- This is the initial draft written by Planner before implementation begins.
     The implementer updates src/core/CLAUDE.md as work progresses. -->

- Now: Not started
- Done: Interface defined by Planner
- Next: Implement `task.py` then `manager.py`

## Notes
- Do not import from `storage` or `cli` — this module has no upstream dependencies.

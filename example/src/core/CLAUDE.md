# Module Context: core

## Role

Task data model and business logic. No I/O, no CLI concerns.

## Responsibilities

- Define `Task` dataclass (`id`, `title`, `done`)
- Implement `TaskManager` with `add()`, `complete()`, `delete()`, `list_all()`
- Generate unique task IDs (uuid4)

## Interface (Produced)

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

## Constraints

- No file I/O in this module
- No argparse or print statements

## Files

- `src/core/task.py` — Task dataclass
- `src/core/manager.py` — TaskManager class
- `src/core/tests/test_manager.py` — unit tests

# Module Context: storage

## Role

JSON file persistence. Reads and writes task lists on behalf of the CLI.

## Responsibilities

- Load tasks from `~/.tasks.json`
- Save tasks back to `~/.tasks.json`
- Create file if it does not exist

## Interface (Consumed / Produced)

```python
# Consumes
from core.task import Task

# Produces
def load_tasks() -> list[Task]: ...
def save_tasks(tasks: list[Task]) -> None: ...
```

## Constraints

- Storage path is always `~/.tasks.json`
- Must not import from `cli` module

## Files

- `src/storage/store.py` — load/save functions
- `src/storage/tests/test_store.py` — unit tests (uses tmp_path fixture)

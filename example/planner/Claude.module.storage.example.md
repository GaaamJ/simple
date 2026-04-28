# storage Context

This file is the only module-specific context a teammate should need for this module.

## Role
JSON file persistence. Reads and writes task lists on behalf of the CLI layer.

## Responsibilities
- Load tasks from `~/.tasks.json` on disk
- Save tasks back to `~/.tasks.json`
- Create file with empty list if it does not exist

## Interface
### Input
- From: `cli`
- Data: `tasks: list[Task]` to save

### Output
- To: `cli`
- Data:
  ```python
  def load_tasks() -> list[Task]: ...
  def save_tasks(tasks: list[Task]) -> None: ...
  ```

## Dependencies
- [x] core (needs `Task` dataclass for serialization/deserialization)

## Tech Stack
No module-specific additions — uses `json`, `pathlib` (stdlib).

## File Structure
```text
storage/
  CLAUDE.md
  CHANGELOG.md
  store.py        ← load_tasks / save_tasks
  tests/
    test_store.py ← uses pytest tmp_path fixture
```

## Current Status
- Now: Not started
- Done: Interface defined by Planner
- Next: Implement after `core` is complete

## Notes
- Storage path is always `~/.tasks.json`. Do not make it configurable.
- Must not import from `cli`.

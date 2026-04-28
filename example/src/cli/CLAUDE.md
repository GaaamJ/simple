# Module Context: cli

## Role

Argument parsing and user-facing output. Entrypoint for the application.

## Responsibilities

- Parse commands: `add`, `list`, `done`, `delete`
- Call `TaskManager` and `storage` functions
- Print tasks as a formatted table

## Interface (Consumed)

```python
from core.manager import TaskManager
from storage.store import load_tasks, save_tasks
```

## Expected Output (list command)

```
ID       Done  Title
-------- ----  ----------------------
a1b2c3   [ ]   Buy groceries
d4e5f6   [x]   Walk the dog
```

## Constraints

- No business logic in this module
- Must use argparse (stdlib only)

## Files

- `src/cli/main.py` — entrypoint and command handlers
- `src/cli/formatter.py` — table formatting

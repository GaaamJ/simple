# cli Context

This file is the only module-specific context a teammate should need for this module.

## Role
Argument parsing and user-facing output. Entrypoint for the entire application.

## Responsibilities
- Parse commands: `add <title>`, `list`, `done <id>`, `delete <id>`
- Delegate to `TaskManager` and `storage` functions
- Print tasks as a formatted table

## Interface
### Input
- From: sys.argv (user command line)
- Data: command string + optional arguments

### Output
- To: stdout
- Data: formatted table for `list`, confirmation message for mutations
  ```
  ID       Done  Title
  -------- ----  ----------------------
  a1b2c3   [ ]   Buy groceries
  d4e5f6   [x]   Walk the dog
  ```

## Dependencies
- [x] core (needs `TaskManager`)
- [x] storage (needs `load_tasks`, `save_tasks`)

## Tech Stack
No module-specific additions — uses `argparse` (stdlib).

## File Structure
```text
cli/
  CLAUDE.md
  CHANGELOG.md
  main.py         ← entrypoint, command handlers
  formatter.py    ← table formatting logic
```

## Current Status
- Now: Not started
- Done: Interface defined by Planner
- Next: Implement after `core` and `storage` are complete

## Notes
- No business logic here. All task operations go through `TaskManager`.
- Keep `formatter.py` separate so it can be tested independently.

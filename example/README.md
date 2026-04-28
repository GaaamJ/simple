# Task Manager CLI

A minimal command-line task manager. Tasks are stored locally as JSON.

## Usage

```bash
python -m tasks add "Buy groceries"
python -m tasks list
python -m tasks done <id>
python -m tasks delete <id>
```

## Requirements

- Python 3.11+
- No external dependencies

## Docs

- Architecture: `docs/ARCHITECTURE.en.md`
- Setup: `docs/SETUP_GUIDE.en.md`
- Usage: `docs/USAGE_GUIDE.en.md`

## Example Structure Notes

`planner/` contains snapshots of files that the `/implementer` skill generates at planning time.
These files do not exist in real projects — they are included here so readers can see what Planner produces before implementation begins.

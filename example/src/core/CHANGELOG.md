# Changelog: core

<!-- Written by /implementer after completing module work -->

## 2026-04-28

- Implemented `Task` dataclass (`id`, `title`, `done`) in `src/core/task.py`
- Implemented `TaskManager` (`add`, `complete`, `delete`, `list_all`, `_get`) in `src/core/manager.py`
- Added `src/core/__init__.py` exporting `Task` and `TaskManager`
- Added 8 unit tests in `src/core/tests/test_manager.py` — all passing

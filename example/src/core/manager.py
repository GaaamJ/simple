import uuid
from .task import Task


class TaskManager:
    def __init__(self, tasks: list[Task] | None = None) -> None:
        self._tasks: list[Task] = tasks if tasks is not None else []

    def add(self, title: str) -> Task:
        task = Task(id=str(uuid.uuid4()), title=title)
        self._tasks.append(task)
        return task

    def complete(self, task_id: str) -> None:
        task = self._get(task_id)
        task.done = True

    def delete(self, task_id: str) -> None:
        task = self._get(task_id)
        self._tasks.remove(task)

    def list_all(self) -> list[Task]:
        return list(self._tasks)

    def _get(self, task_id: str) -> Task:
        for task in self._tasks:
            if task.id == task_id:
                return task
        raise KeyError(f"Task not found: {task_id}")

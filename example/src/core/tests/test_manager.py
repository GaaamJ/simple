import pytest
from src.core import Task, TaskManager


def test_add_returns_task():
    tm = TaskManager()
    task = tm.add("Buy milk")
    assert isinstance(task, Task)
    assert task.title == "Buy milk"
    assert task.done is False
    assert task.id


def test_add_increments_list():
    tm = TaskManager()
    tm.add("A")
    tm.add("B")
    assert len(tm.list_all()) == 2


def test_list_all_returns_copy():
    tm = TaskManager()
    tm.add("A")
    result = tm.list_all()
    result.clear()
    assert len(tm.list_all()) == 1


def test_complete_marks_done():
    tm = TaskManager()
    task = tm.add("Write tests")
    tm.complete(task.id)
    assert tm.list_all()[0].done is True


def test_complete_unknown_id_raises():
    tm = TaskManager()
    with pytest.raises(KeyError):
        tm.complete("nonexistent-id")


def test_delete_removes_task():
    tm = TaskManager()
    task = tm.add("Remove me")
    tm.delete(task.id)
    assert tm.list_all() == []


def test_delete_unknown_id_raises():
    tm = TaskManager()
    with pytest.raises(KeyError):
        tm.delete("nonexistent-id")


def test_unique_ids():
    tm = TaskManager()
    t1 = tm.add("First")
    t2 = tm.add("Second")
    assert t1.id != t2.id

from dataclasses import dataclass, field


@dataclass
class Task:
    id: str
    title: str
    done: bool = False

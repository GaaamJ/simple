# Blueprint

> 이 프로젝트의 실행 청사진.
> CLAUDE.md가 무엇을 만드는지 정의한다면, BLUEPRINT.md는 어떻게 실행되는지를 정의한다.
> Planner가 작성하고, Team Lead(Claude Code)가 구현 진입 시 가장 먼저 읽는다.
>
> **이 파일은 템플릿입니다.** 아래 module-a/b/c/d는 예시입니다.
> Planner가 프로젝트에 맞게 모듈 이름, 흐름, 인수인계 데이터를 수정 / 추가 / 제거합니다.

---

## 실행 흐름

```
[module-a] (teammate-1)
    ↓ output: {}
[module-b] (teammate-2) ──┐  병렬
[module-c] (teammate-3) ──┘
    ↓
[module-d] (teammate-4)
```

---

## 모듈 배정

| 모듈 | 담당 teammate | 선행 모듈 | 병렬 그룹 |
|------|--------------|----------|----------|
| module-a | teammate-1 | — | — |
| module-b | teammate-2 | module-a | group-1 |
| module-c | teammate-3 | module-a | group-1 |
| module-d | teammate-4 | module-b, module-c | — |

---

## 모듈 간 인수인계

| 송신 모듈 | 수신 모듈 | 전달 데이터 |
|----------|----------|-----------|
| module-a | module-b | { field: type } |
| module-a | module-c | { field: type } |
| module-b | module-d | { field: type } |
| module-c | module-d | { field: type } |

---

## 완료 조건 (Team Lead)

- [ ] 실행 흐름 검토 완료
- [ ] 모든 teammate 작업 완료 확인
- [ ] 모듈 간 인수인계 데이터 검증 완료
- [ ] 최종 결과물 검토 및 커밋

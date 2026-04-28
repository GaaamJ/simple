# Architecture

> 이 템플릿은 코드 템플릿이 아니다.
> AI 에이전트가 설계 → 구현 → 기록 → 재설계 사이클을 반복할 수 있도록 역할과 문서 흐름을 정의한 **AI 작업 운영 템플릿**이다.

---

## 전체 작업 흐름

```
설계
  Planner(Claude Desktop/Web)
  CLAUDE.md / BLUEPRINT.md / 모듈별 CLAUDE.md 작성
        ↓
   인수인계
  Git 커밋 → Codex → Notion 동기화
        ↓
      구현
  Claude Code /implementer
  Team Lead: 문서 검증 → 구현 방식 확정 → Teammate 배정
  Teammate: 모듈 구현 → Team Lead에 결과 반환
        ↓
  발견사항 기록
  TODO.md "다음에 할 것"에 즉시 추가
        ↓
  다음 설계
  Planner로 되돌아가 보완 또는 새 사이클 시작
```

---

## 도구 역할 경계

| 도구 | 역할 | 하지 말 것 |
|------|------|-----------|
| Claude Desktop / Web | 설계 전담. CLAUDE.md / BLUEPRINT.md / 모듈별 CLAUDE.md 작성 | 구현 파일 생성, 코드 작성 |
| Git | 전체 버전 관리 | — |
| Codex | CLAUDE.md → Notion 자동 동기화 | — |
| Claude Code | 문서 검증 → 구현 방식 확정 → 구현 실행 | CLAUDE.md 임의 수정, 문서 보완 후 진행 |

---

## 에이전트 역할 경계

### Planner (Claude Desktop / Web)
- 프로젝트 목표, 제약, Module Map 정의
- `CLAUDE.md` / `BLUEPRINT.md` / `src/[모듈]/CLAUDE.md` / `README.md` 작성
- 설계 완료 시 "설계 완료" 선언 후 세션 종료
- **구현 진입 금지** — 코드 및 구현 파일 생성 불가

### Team Lead (Claude Code — `/implementer` 진입)
- 인수인계 문서 품질 검증 (1단계)
- 구현 방식 확정 — 단일 세션 vs worktree 결정 (2단계)
- Teammate 생성 및 결과 통합 (3단계)
- 문서 불완전 시 Planner로 반드시 되돌림 (임의 보완 금지)

### Teammate (Claude Code — worktree)
- 담당 모듈 단일 구현
- 인터페이스 계약 준수
- 완료 후 Team Lead에 결과 반환
- **모듈 범위 이탈 금지**

---

## 핵심 파일 역할

| 파일 | 정본 역할 | 작성 주체 |
|------|---------|---------|
| `CLAUDE.md` | 프로젝트 전체 맥락 — Overview / Goals / Tech Stack / Module Map | Planner |
| `BLUEPRINT.md` | 실행 청사진 — 실행 흐름 / 모듈 배정 / 모듈 간 인수인계 데이터 | Planner |
| `src/[module]/CLAUDE.md` | 모듈별 구현 인수인계 — Role / Interface / Notes. Teammate worktree 진입점 | Planner |
| `TODO.md` | 현재 작업 큐 — 지금 할 것 / 다음에 할 것 / 완료 | Team Lead (구현 중 갱신) |
| `CHANGELOG.md` | 완료 작업 날짜별 기록 | Team Lead |
| `docs/USAGE_GUIDE.md` | 새 프로젝트 시작부터 구현까지 전체 운영법 | — |
| `docs/SKILLS.md` | Claude Code 스킬 목록 및 사용법 | — |
| `planner/` | Planner 전용 템플릿 및 Project Instructions | — |

---

## 문서 흐름 요약

```
CLAUDE.md          ←  Planner가 작성, Claude Code가 읽는 맥락 정본
BLUEPRINT.md       ←  Planner가 작성, Team Lead가 구현 진입 시 가장 먼저 읽음
src/*/CLAUDE.md    ←  Planner가 작성, Teammate worktree 진입점
TODO.md            ←  Team Lead가 구현 중 갱신, /today가 읽음
CHANGELOG.md       ←  Team Lead가 완료 시 기록, /today가 읽음
```

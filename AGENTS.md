# Agent Roles

## Team Lead — Claude Code (Orchestrator)
**역할:** 전체 작업 조율 및 통합
**담당:**
- CLAUDE.md 기반으로 작업 분해
- teammate 생성 및 태스크 할당
- 모듈 간 의존성 조율
- 결과 통합 및 검토

**실행:**
```bash
cd [project-root]
claude
```

---

## Planner — Claude Desktop
**역할:** 설계 및 문서 작성
**담당:**
- 아이디어 구체화
- CLAUDE.md / AGENTS.md 작성 및 업데이트
- 모듈 설계 및 인터페이스 정의

**사용 시점:**
- 프로젝트 시작 시
- 방향 변경 시
- 새 모듈 추가 시

---

## Documenter — Codex
**역할:** Notion 문서 자동화
**담당:**
- CLAUDE.md → Notion 페이지 변환
- 진행 상황 업데이트
- 설계 결정 기록

**Notion 동기화 프롬프트:**
```
CLAUDE.md를 읽고 아래 구조로 Notion 페이지를 작성해줘:
- Overview
- Goals
- Tech Stack
- Module Map
- Current Status
- Key Decisions
```

---

## Teammate — Claude Code (Subagent)
**역할:** 모듈별 구현
**담당:**
- 상위 CLAUDE.md + 모듈 CLAUDE.md 참고
- 할당된 모듈 독립적으로 구현
- 결과 Team Lead에 return

**생성 방법 (Team Lead 프롬프트):**
```
module-a, module-b 각각 담당하는 teammate 생성해줘.
각자 해당 모듈의 CLAUDE.md 읽고 독립적으로 작업 후 결과 공유해.
```

---

## 협업 흐름

```
Planner (Claude Desktop)
    CLAUDE.md / AGENTS.md 작성
          ↓
    Git 커밋
          ↓
Documenter (Codex)
    Notion 동기화
          ↓
Team Lead (Claude Code)
    작업 분해 → teammate 생성
          ↓
Teammate A        Teammate B
(module-a)        (module-b)
    ↓                 ↓
    └──── 결과 통합 ───┘
          ↓
    Team Lead 검토 및 완료
```
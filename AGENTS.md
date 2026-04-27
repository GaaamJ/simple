# Agent Roles

## Team Lead — Claude Code (Orchestrator)
**역할:** 전체 작업 조율 및 통합
**담당:**
- CLAUDE.md 기반으로 작업 분해
- teammate 생성 및 태스크 할당
- 모듈 간 의존성 조율
- 결과 통합 및 검토

**실행:**
> VSCode에서 프로젝트 폴더를 열고 Claude Code 채팅창에서 바로 요청.

## 완료 조건
- [ ] 모든 teammate 작업 완료 확인
- [ ] 모듈 간 통합 검토 완료
- [ ] 최종 결과물 검토 및 커밋

→ 완료 시 다음 에이전트: 없음 (최종 단계)

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

## 완료 조건
- [ ] 루트 CLAUDE.md 작성 완료 (Module Map 포함)
- [ ] Module Map에 실행 순서 / 병렬 가능 여부 기입
- [ ] 모듈별 CLAUDE.md 생성 완료 (`src/[모듈명]/CLAUDE.md`)
- [ ] AGENTS.md 업데이트 완료
- [ ] README.md 프로젝트 정보 기입 완료
- [ ] "설계 완료" 선언

→ 완료 시 다음 에이전트: Documenter (Codex)

---

## Documenter — Codex
**역할:** Notion 문서 자동화
**담당:**
- CLAUDE.md → Notion 페이지 변환
- 진행 상황 업데이트
- 설계 결정 기록

**실행:**
```bash
cd [프로젝트 경로]
codex
```

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

## 완료 조건
- [ ] Notion 페이지 생성 / 업데이트 완료
- [ ] CLAUDE.md의 모든 섹션이 Notion에 반영됨 확인

→ 완료 시 다음 에이전트: Claude Code (Team Lead)

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

## 완료 조건
- [ ] 담당 모듈 구현 완료
- [ ] 인터페이스 계약 준수 확인
- [ ] Team Lead에 결과 return

→ 완료 시 다음 에이전트: Team Lead (통합)

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
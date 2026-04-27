# Tasks

> pipeline-template 프로젝트의 현재 작업 목록

---

## 다음 세션에 할 것

- [ ] 토큰 절약 구조로 변경
- [ ] skills에 today's todo list / todo list 체크 기능 추가
- [ ] mattpocock/skills 전체 가져오고 SKILLS.md 한국어로 번역
- [ ] documenter skill 삭제 (Codex에서 slash command 미지원 → planner와 같은 이유)

---

## 진행 중

- [ ] "Use this template"으로 새 repo 생성 후 파이프라인 전체 검증
  - Claude Desktop Project 설정 (PLANNER_PROJECT.md 붙여넣기 + MCP 경로)
  - Claude Desktop에서 CLAUDE.md / AGENTS.md / 모듈별 CLAUDE.md / README.md 작성
  - Codex → Notion 동기화 확인
  - Claude Code → `/implementer` 로 구현 시작 및 Agent Teams 동작 확인

---

## 완료

- [x] 파일 구조 정리 (.claude/, docs/, templates/, src/)
- [x] Agent Teams 설정 (.claude/Settings.json)
- [x] 문서 전면 정비 (Git 일반화, CLI 혼재 제거)
- [x] setup.bat 수정
- [x] README.md → 프로젝트 플레이스홀더로 교체
- [x] docs 3파일로 통합 (SETUP_GUIDE / USAGE_GUIDE / SKILLS)
- [x] .claude/skills/ 에이전트 역할 경계 정의 (implementer / documenter / grill-me)
- [x] planner skill 제거 → Claude Desktop Project Instructions로 대체 (PLANNER_PROJECT.md)
- [x] Module Map 실행 순서·병렬 가능 컬럼 추가
- [x] AGENTS.md 완료 조건 추가
- [x] implementer skill 안전 지점 추가 (실행 계획 승인 후 teammate 생성)
- [x] Planner 완료 조건에 모듈별 CLAUDE.md 생성 추가 (worktree 진입점)
